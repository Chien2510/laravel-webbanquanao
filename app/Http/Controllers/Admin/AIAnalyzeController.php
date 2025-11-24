<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class AIAnalyzeController extends Controller
{
    public function analyze(Request $req)
    {
        $data = $req->only(['revenue', 'import_cost', 'profit', 'fee']);
        $summary = "Dữ liệu thống kê: Doanh thu {$data['revenue']} VND, Chi phí nhập hàng {$data['import_cost']} VND, Lợi nhuận {$data['profit']} VND, Phí vận chuyển {$data['fee']} VND.";

        $key = env('OPENAI_API_KEY');
        if ($key) {
            return $this->viaOpenAI($summary, $key);
        } else {
            return $this->viaProxyGPT($summary);
        }
    }

    private function viaOpenAI($summary, $key)
    {
        try {
            $resp = Http::withHeaders([
                'Authorization' => "Bearer $key",
                'Content-Type'  => 'application/json'
            ])->post('https://api.openai.com/v1/chat/completions', [
                'model' => 'gpt-4o-mini',
                'messages' => [
                    [
                        'role' => 'system',
                        'content' => 'Bạn là chuyên gia phân tích kinh doanh trong ngành thời trang Việt Nam. Hãy nhận dữ liệu tài chính và phân tích:
- Xu hướng doanh thu, chi phí, lợi nhuận.
- Sản phẩm tiềm năng hoặc bán chạy.
- Gợi ý tối ưu nhập hàng và tiếp thị.
Trình bày ngắn gọn, dễ hiểu, có gạch đầu dòng.'
                    ],
                    ['role' => 'user', 'content' => $summary],
                ],
                'temperature' => 0.7,
                'max_tokens' => 600
            ]);

            $data = $resp->json();
            $content = $data['choices'][0]['message']['content'] ?? 'Không có phản hồi.';
            return response()->json(['analysis' => $content]);
        } catch (\Throwable $e) {
            return response()->json(['message' => 'Lỗi OpenAI: '.$e->getMessage()], 502);
        }
    }

    private function viaProxyGPT($summary)
    {
        try {
            $resp = Http::post('https://gptfree-proxy.vercel.app/api/chat', [
                'q' => $summary,
                'context' => 'Bạn là GPT-5 chuyên gia phân tích dữ liệu kinh doanh ngành thời trang. Phân tích xu hướng, lợi nhuận, sản phẩm bán chạy và đề xuất chiến lược cải thiện.'
            ]);
            $data = $resp->json();
            return response()->json(['analysis' => $data['answer'] ?? 'Không có phản hồi.']);
        } catch (\Throwable $e) {
            return response()->json(['message' => 'Không thể kết nối GPT-5 Proxy: '.$e->getMessage()], 502);
        }
    }
}
