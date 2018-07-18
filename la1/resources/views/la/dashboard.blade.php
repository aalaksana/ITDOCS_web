@extends('la.layouts.app')

@section('htmlheader_title') Beranda @endsection
@section('contentheader_title') Beranda @endsection
@section('contentheader_description') Selayang Pandang Penugasan @endsection

@section('main-content')
<!-- Konten Dashboard -->
<section class="content">
  <div class="row">
    <div class="callout callout-info">
      <div class="row">
        <div class="col-md-8">
          <h4 style="position: absolut; top: 10px; left: 10px; font-size: 20px; font-weight: 800;">Proyek Aplikasi Dummy</h4>
        </div>
        <div class="col-md-4">
          <div class="btn-group" style="position: absolute; right: 15px;">
            <button type="button" class="btn btn-success" style="background-color: #48b0f7; border-color: whitesmoke">Pilih Proyek</button>
            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" style="background-color: #48b0f7; border-color: whitesmoke">
              <span class="caret"></span>
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu" role="menu">
              <li><a href="#">Aplikasi Dummy</a></li>
              <li><a href="#">Aplikasi Dangdut</a></li>
              <li><a href="#">Aplikasi Dagang</a></li>
            </ul> 
        </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="small-box" style="background-color: #1e655e">
        <div class="inner" style="height: 15%">
              <h3 style="font-size: 18px; color: whitesmoke">Progress Pengembangan</h3>
              <p style="font-size: 11px; color: whitesmoke">per tanggal 17 Juli 2018</p>
          <div style="min-width: 320px; max-width: 1024px; margin: 8px auto;"> 
            <div class="progress-bar-wrapper"></div> 
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #109023">
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">Andre Hehanusa</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP 198908012013101002</h5>
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src="../public/la-assets/img/ahe.jpg" alt="user avatar">
        </div>
        <div class="box-footer">
          <div class="row">
            <div class="col-sm-6">
              <div class="description-block" style="text-align: left">
                <p class="description-text">Penanggung Jawab Proses Bisnis</p>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="description-block" style="text-align: right">
                <p class="description-header">DJPb</p>
                <span class="description-text">Direktorat PKN</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #337ab7">
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">Bob Tutopoli</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP 198908012013101002</h5>
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src="../public/la-assets/img/bobtut.jpg" alt="user avatar">
        </div>
        <div class="box-footer">
          <div class="row">
            <div class="col-sm-6">
              <div class="description-block" style="text-align: left">
                <p class="description-text">Penanggung Jawab Pengembangan SI</p>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="description-block" style="text-align: right">
                <p class="description-header">DJPb</p>
                <span class="description-text">Direktorat SITP</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #ce7f03">
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">Siti Badriah</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP 198908012013102002</h5>
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src="../public/la-assets/img/badsit.jpg" alt="user avatar">
        </div>
        <div class="box-footer">
          <div class="row">
            <div class="col-sm-6">
              <div class="description-block" style="text-align: left">
                <p class="description-text">Penanggung Jawab Tim Quality Assurance</p>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="description-block" style="text-align: right">
                <p class="description-header">Itjen Kemenkeu</p>
                <span class="description-text">Inspektorat VII</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #03BBAD">
        <div class="box-header with-border" style="background-color: #10cfbd">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Analisa</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li><a href="/Doku/Dok 0. 20151106 Dokumen Kebutuhan Pengguna.docx" target="_blank">Dokumen 0</a></li>
            <li><a href="/Doku/Dok 1. 20151106 Dokumen Analisis dan Spesifikasi Kebutuhan.docx" target="_blank">Dokumen 1</a></li>
            <li><a href="/Doku/Dok 2. 20151106 Dokumen Perubahan Analisis dan Spesifikasi Kebutuhan.docx" target="_blank">Dokumen 2</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #03BBAD">
        <div class="box-header with-border" style="background-color: #10cfbd">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Rancangan</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li><a href="/Doku/Dok 3. 20151106 Dokumen Rancangan Tingkat Tinggi.docx" target="_blank">Dokumen 3</a></li>
            <li><a href="/Doku/Dok 4. 20151106 Dokumen Rancangan Rinci.docx" target="_blank">Dokumen 4</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #03BBAD">
        <div class="box-header with-border" style="background-color: #10cfbd">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Pengembangan</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li><a href="/Doku/Dok 5. 20151106 Dokumen Pengembangan Sistem Informasi.docx" target="_blank">Dokumen 5</a></li>
            <li><a href="/Doku/Dok 6. 20151106 Formulir Permintaan Perubahan dan Persetujuan.docx" target="_blank">Dokumen 6</a></li>
            <li><a href="/Doku/Dok 7. 20151106 Dokumen Rencana dan Skenario Pengujian.docx" target="_blank">Dokumen 7</a></li>
            <li><a href="/Doku/Dok 7.0 20151106 Formulir Permintaan Pengendalian Mutu Aplikasi.docx" target="_blank">Dokumen 7.0</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #03BBAD">
        <div class="box-header with-border" style="background-color: #10cfbd">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Pengujian</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li><a href="/Doku/Dok 7.1. 20151106 Dokumen Pengendalian Mutu.docx" target="_blank">Dokumen 7.1</a></li>
            <li><a href="/Doku/Dok 8. 20151106 Dokumen Hasil Pengujian oleh Pengguna.docx" target="_blank">Dokumen 8</a></li>
            <li><a href="/Doku/Dok 8.1 20151106 Form Pengujian oleh Pengguna.docx" target="_blank">Dokumen 8.1</a></li>
            <li><a href="/Doku/Dok 9. 20151106 Dokumen Analisis Hasil Pengujian.docx" target="_blank">Dokumen 9</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #d22b27">
        <div class="box-header with-border" style="background-color: #f55753">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Implementasi</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li><a href="/Doku/Dok 3. 20151106 Dokumen Rancangan Tingkat Tinggi.docx" target="_blank">Dokumen 10</a></li>
            <li><a href="/Doku/Dok 4. 20151106 Dokumen Rancangan Rinci.docx" target="_blank">Dokumen 11</a></li>
            <li><a href="/Doku/Dok 3. 20151106 Dokumen Rancangan Tingkat Tinggi.docx" target="_blank">Dokumen 12</a></li>
            <li>Dokumen 13</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-lg-2">
      <div class="box box-primary" style="border-top-color: #5f5f5f">
        <div class="box-header with-border" style="background-color: #828282">
          <h3 class="box-title" style="font-size: 12px; color: whitesmoke"><b>Dok. Pasca</b></h3>
        </div>
        <div class="box-body bg-white" style="height: 120px">
          <ul style="padding-left: 15px">
            <li>Dokumen 14</li>
            <li>Dokumen 15</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection

@push('styles')
<!-- Progress Bar -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/progress-bar-master/main.css') }}">
<!-- Morris chart -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/morris/morris.css') }}">
<!-- jvectormap -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css') }}">
<!-- Date Picker -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/datepicker/datepicker3.css') }}">
<!-- Daterange picker -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/daterangepicker/daterangepicker-bs3.css') }}">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="{{ asset('la-assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}">
@endpush


@push('scripts')
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Progress Bar -->
<script src="{{ asset('la-assets/plugins/progress-bar-master/progress-bar.js') }}"></script>
<script src="{{ asset('la-assets/plugins/progress-bar-master/app.js') }}"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="{{ asset('la-assets/plugins/morris/morris.min.js') }}"></script>
<!-- Sparkline -->
<script src="{{ asset('la-assets/plugins/sparkline/jquery.sparkline.min.js') }}"></script>
<!-- jvectormap -->
<script src="{{ asset('la-assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') }}"></script>
<script src="{{ asset('la-assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
<!-- jQuery Knob Chart -->
<script src="{{ asset('la-assets/plugins/knob/jquery.knob.js') }}"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="{{ asset('la-assets/plugins/daterangepicker/daterangepicker.js') }}"></script>
<!-- datepicker -->
<script src="{{ asset('la-assets/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="{{ asset('la-assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}"></script>
<!-- FastClick -->
<script src="{{ asset('la-assets/plugins/fastclick/fastclick.js') }}"></script>
<!-- dashboard -->
<script src="{{ asset('la-assets/js/pages/dashboard.js') }}"></script>
@endpush

@push('scripts')
<script>
(function($) {
	$('body').pgNotification({
		style: 'circle',
		title: 'ITDOCS',
		message: "Selamat Datang di IT Doc System",
		position: "top-right",
		timeout: 0,
		type: "success",
		thumbnail: '<img width="40" height="40" style="display: inline-block;" src="{{ Gravatar::fallback(asset('la-assets/img/ahe.png'))->get(Auth::user()->email, 'default') }}" data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">'
	}).show();
})(window.jQuery);
</script>
@endpush