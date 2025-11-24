@extends('layouts.admin')
@section('content')
<section class="content">
  <div class="container-fluid">
    <div class="row">
        {{-- ========== BỘ LỌC ========== --}}
        <div class="col-12">
            <div class="card">
                <form method="GET">
                    <div class="card-header text-end">
                        <div class="d-flex">
                            <div class="input-group">
                                <span class="input-group-text">
                                    <i class="far fa-calendar-alt"></i>
                                </span>
                                <input type="text" name="reservation" class="form-control float-right" id="reservation">
                            </div>
                            <div style="width: 150px">
                                <button class="btn btn-primary">Lọc Dữ Liệu</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        {{-- ========== THỐNG KÊ NHANH ========== --}}
        <div class="col-xxl-3 col-md-6 col-sm-6">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Tổng Doanh Thu</h5>
                    <div class="d-flex align-items-center">
                        <div class="ps-3">
                            <h6>{{ format_number_to_money($revenue) }} VND</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-3 col-md-6 col-sm-6">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Tổng Chi Phí Nhập Hàng</h5>
                    <div class="d-flex align-items-center">
                        <div class="ps-3">
                            <h6>{{ format_number_to_money($total_import) }} VND</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-3 col-md-6 col-sm-6">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Tổng Lợi Nhuận</h5>
                    <div class="d-flex align-items-center">
                        <div class="ps-3">
                            <h6>{{ format_number_to_money($profit) }} VND</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xxl-3 col-md-6 col-sm-6">
            <div class="card info-card revenue-card">
                <div class="card-body">
                    <h5 class="card-title">Tổng Chi Phí Vận Chuyển</h5>
                    <div class="d-flex align-items-center">
                        <div class="ps-3">
                            <h6>{{ format_number_to_money($fee) }} VND</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- ========== BẢNG DỮ LIỆU ========== --}}
        <div class="col-12">
            <x-table-crud
                :headers="$tableStatisRevAndPro['headers']"
                :list="$tableStatisRevAndPro['list']"
                :actions="$tableStatisRevAndPro['actions']"
                :routes="$tableStatisRevAndPro['routes']"
                :filter="false"
            />
        </div>

        {{-- ========== PHÂN TÍCH AI ========== --}}
        <div class="col-12 mt-4">
            <div class="card border-success shadow-sm">
                <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                    <h5 class="m-0">🧠 Phân Tích & Dự Báo Kinh Doanh (AI)</h5>
                    <button id="btnAnalyzeAI" class="btn btn-light text-success fw-bold">Phân Tích Ngay</button>
                </div>
                <div class="card-body" id="aiResult" style="min-height:140px;">
                    <em>Nhấn “Phân Tích Ngay” để AI đánh giá xu hướng doanh thu, chi phí, lợi nhuận và đề xuất tối ưu kinh doanh.</em>
                </div>
            </div>
        </div>
    </div>
  </div>
</section>

<meta name="csrf-token" content="{{ csrf_token() }}">

<style>
.ai-block {
    background: #f4fff6;
    border: 1px solid #b7e4c7;
    border-radius: 10px;
    padding: 22px 26px;
    line-height: 1.7;
    font-size: 15px;
    color: #1b1b1b;
    word-break: break-word;
}
.ai-block strong {
    color: #006b2d;
}
.ai-title {
    font-weight: 700;
    color: #156b3a;
    font-size: 16.5px;
    margin-top: 14px;
    margin-bottom: 6px;
}
.ai-section {
    margin-top: 20px;
    margin-bottom: 8px;
}
.ai-section ul {
    list-style: disc;
    margin-left: 25px;
}
.ai-conclusion {
    font-weight: 600;
    color: #004085;
    background: #e8f0fe;
    padding: 14px 18px;
    border-radius: 6px;
    margin-top: 18px;
    white-space: pre-line;
    border-left: 5px solid #007bff;
}
</style>

<script>
function formatAIResponse(raw) {
  // Chuẩn hoá & bỏ markdown basic
  let text = (raw || '').replace(/\r/g, '');
  text = text.replace(/#+/g, '');                 
  text = text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');

  // Tách "Kết luận"
  let conclusion = '';
  const m = text.match(/(?:^|\n)\s*(kết luận|ket luan)\s*:?\s*([\s\S]*)$/i);
  if (m) {
    conclusion = (m[2] || '').trim();
    text = text.slice(0, m.index).trim();
  }

  // Tách mục 1., 2., 3. …
  const sections = text.split(/\n\s*(?=\d+\.\s+)/g);
  let html = '';

  const renderLines = (s) => {
    return s
      .split('\n')
      .map(line => line.trim())
      .filter(line => line.length)
      .map(line => {
        if (/^[-•*–]\s+/.test(line)) return '• ' + line.replace(/^[-•*–]\s+/, '');
        return line;
      })
      .join('<br>');
  };

  sections.forEach(sec => {
    if (!sec.trim()) return;
    const firstNewline = sec.indexOf('\n');
    const titleLine = (firstNewline === -1 ? sec : sec.slice(0, firstNewline)).trim();
    const body = (firstNewline === -1 ? '' : sec.slice(firstNewline + 1));
    const title = titleLine.replace(/^\d+\.\s*/, '').trim();

    html += `
      <div class="ai-section">
        <div class="ai-title">🔹 ${title}</div>
        <div>${renderLines(body)}</div>
      </div>`;
  });

  if (conclusion) {
    html += `
      <div class="ai-conclusion">
        <strong>📘 Kết luận:</strong><br>${renderLines(conclusion)}
      </div>`;
  }

  return `<div class="ai-block">${html}</div>`;
}

document.getElementById('btnAnalyzeAI').addEventListener('click', async () => {
  const btn = document.getElementById('btnAnalyzeAI');
  const result = document.getElementById('aiResult');
  btn.disabled = true;
  btn.innerHTML = '⏳ Đang phân tích...';
  result.innerHTML = '<i>Đang gửi dữ liệu lên AI...</i>';

  try {
    const resp = await fetch("{{ url('/admin/analyze-ai') }}", {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
      },
      body: JSON.stringify({
        revenue: "{{ $revenue }}",
        import_cost: "{{ $total_import }}",
        profit: "{{ $profit }}",
        fee: "{{ $fee }}"
      })
    });

    const data = await resp.json();
    if (resp.ok && data.analysis) {
      result.innerHTML = formatAIResponse(data.analysis);
    } else {
      result.innerHTML = `<span class="text-danger">⚠️ ${data.message || 'AI không phản hồi.'}</span>`;
    }
  } catch (err) {
    result.innerHTML = '<span class="text-danger">⚠️ Không thể kết nối tới máy chủ AI.</span>';
  }

  btn.disabled = false;
  btn.innerHTML = 'Phân Tích Ngay';
});
</script>

@vite(['resources/admin/js/statistical.js'])
@endsection
