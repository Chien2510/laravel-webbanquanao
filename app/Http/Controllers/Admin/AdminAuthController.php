<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminAuthController extends Controller
{
    // Hiển thị form đăng nhập
    public function showLoginForm()
    {
        return view('admin.auth.login');
    }

    // Xử lý đăng nhập
    public function login(Request $request)
    {
        // Kiểm tra dữ liệu đầu vào
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ], [
            'email.required' => 'Vui lòng nhập email.',
            'email.email' => 'Định dạng email không hợp lệ.',
            'password.required' => 'Vui lòng nhập mật khẩu.',
            'password.min' => 'Mật khẩu phải có ít nhất 6 ký tự.',
        ]);

        // Thử đăng nhập với guard admin
        if (Auth::guard('admin')->attempt([
            'email' => $request->email,
            'password' => $request->password
        ])) {
            $user = Auth::guard('admin')->user();

            // Nếu có cột disable_reason hoặc status trong DB
            if (isset($user->disable_reason) && $user->disable_reason != null) {
                Auth::guard('admin')->logout();
                return back()->withInput()->with('error', 'Tài khoản của bạn bị khóa: ' . $user->disable_reason);
            }

            return redirect()->route('admin.dashboard');
        }

        // Sai tài khoản hoặc mật khẩu
        return back()->withInput()->with('error', 'Email hoặc mật khẩu không đúng!');
    }

    // Đăng xuất
    public function logout(Request $request)
    {
        Auth::guard('admin')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('admin.login.form')->with('success', 'Đăng xuất thành công!');
    }
}
