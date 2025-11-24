@extends('layouts.admin-auth')

@section('content-auth')
<main>
  <div class="container">
    <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

            <!-- Logo -->
            <div class="d-flex justify-content-center py-4">
              <a href="{{ url('/') }}" class="logo d-flex align-items-center w-auto">
                <img src="{{ asset('asset/admin/v1/assets/img/aa2.png') }}" alt="">
                <span class="d-none d-lg-block">Quản Trị WEBSITE</span>
              </a>
            </div>

            <div class="card mb-3 shadow-sm border-0 rounded-3">
              <div class="card-body">
                <div class="pt-4 pb-2 text-center">
                  <h5 class="card-title pb-0 fs-4">ĐĂNG NHẬP HỆ THỐNG</h5>
                </div>

                {{-- Hiển thị lỗi từ session --}}
                @if (session('error'))
                  <div class="alert alert-danger text-center py-2">{{ session('error') }}</div>
                @endif
                @if (session('success'))
                  <div class="alert alert-success text-center py-2">{{ session('success') }}</div>
                @endif

                {{-- Hiển thị lỗi validate --}}
                @if ($errors->any())
                  <div class="alert alert-danger small py-2 mb-2">
                    <ul class="mb-0 ps-3">
                      @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                      @endforeach
                    </ul>
                  </div>
                @endif

                {{-- Form đăng nhập --}}
                <form class="row g-3" action="{{ route('admin.login') }}" method="POST" id="login-form__js">
                  @csrf
                  <div class="col-12">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" name="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror" id="email" required>
                    @error('email')
                      <div class="invalid-feedback d-block">{{ $message }}</div>
                    @enderror
                  </div>

                  <div class="col-12">
                    <label for="yourPassword" class="form-label">Mật khẩu</label>
                    <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="yourPassword" required>
                    @error('password')
                      <div class="invalid-feedback d-block">{{ $message }}</div>
                    @enderror
                  </div>

                  <div class="col-12">
                    <button class="btn btn-primary w-100" type="submit">Đăng Nhập</button>
                  </div>
                </form>
              </div>
            </div>

            <div class="credits text-center mt-3">
              <p class="small text-muted mb-0">© 2025 Quản trị website - Đăng nhập hệ thống</p>
            </div>

          </div>
        </div>
      </div>
    </section>
  </div>
</main>
@vite(['resources/common/js/login.js'])
@endsection
