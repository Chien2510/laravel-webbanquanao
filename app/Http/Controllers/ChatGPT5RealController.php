<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class ChatGPT5RealController extends Controller
{
    public function ask(Request $req)
    {
        $req->validate(['message' => 'required|string|max:2000']);
        $msg = trim($req->input('message'));

        $apiKey = env('OPENAI_API_KEY');
        $url = "https://api.openai.com/v1/chat/completions";

        try {
            $response = Http::timeout(30)
                ->withHeaders([
                    'Authorization' => 'Bearer ' . $apiKey,
                    'Content-Type' => 'application/json',
                ])
                ->post($url, [
                    'model' => 'gpt-4o-mini', // GPT-5 gói mới nhất (tương đương)
                    'messages' => [
                        ['role' => 'system', 'content' => 'Bạn là GPT-5, trợ lý tư vấn thời trang: thân thiện, ngắn gọn, thông minh, hiểu ngữ cảnh Việt Nam.'],
                        ['role' => 'user', 'content' => $msg],
                    ],
                    'temperature' => 0.8,
                    'max_tokens' => 600,
                ]);

            if ($response->failed()) {
                return response()->json([
                    'error' => true,
                    'message' => '⚠️ Lỗi OpenAI API: ' . $response->status(),
                    'detail' => $response->json(),
                ], $response->status());
            }

            $data = $response->json();
            $answer = $data['choices'][0]['message']['content'] ?? 'Không có phản hồi từ GPT-5.';
            return response()->json([
                'choices' => [[
                    'message' => ['content' => $answer]
                ]]
            ]);
        } catch (\Throwable $e) {
            return response()->json([
                'error' => true,
                'message' => 'Lỗi: ' . $e->getMessage()
            ], 500);
        }
    }
}
