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
          <h4 style="position: absolut; top: 10px; left: 10px; font-size: 20px; font-weight: 800;">{{$proyek[0]->nama}}</h4>
        </div>
        <div class="col-md-4">
          <div class="btn-group" style="position: absolute; right: 15px;">
            <button type="button" class="btn btn-success" style="background-color: #48b0f7; border-color: whitesmoke">Pilih Proyek</button>
            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" style="background-color: #48b0f7; border-color: whitesmoke">
              <span class="caret"></span>
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu" role="menu">
              @foreach( $datas as $data )
              <li><a href={{str_replace("index.php","admin/dashboard",$_SERVER["PHP_SELF"])}}/{{$data->id}}> {{$data->nama}} </a></li>
              @endforeach
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
              <p style="font-size: 11px; color: whitesmoke">Update {{date("Y-m-d")}}</p>
          <div style="min-width: 320px; max-width: 1024px; margin: 8px auto;"> 
            <div class="progress-bar-wrapper"></div> 
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user" style="height: 280px">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #109023">
          @if(count($probis)>0)
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">{{$probis[0]->name}}</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP {{$probis[0]->nip}}</h5>
          @else
          @endif
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}./la-assets/img/ahe.jpg alt="user avatar">
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
                @if(count($probis)>0)
                <p class="description-header">{{$probis[0]->es1}}</p>
                <span class="description-text">{{$probis[0]->es2}}</span>
                @else
                @endif
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user" style="height: 280px">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #337ab7">
          @if(count($si)>0)
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">{{$si[0]->name}}</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP {{$si[0]->nip}}</h5>
          @else
          @endif
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}./la-assets/img/bobtut.jpg alt="user avatar">
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
                @if(count($si)>0)
                <p class="description-header">{{$si[0]->es1}}</p>
                <span class="description-text">{{$si[0]->es2}}</span>
                @else
                @endif
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="box box-widget widget-user" style="height: 280px">
        <div class="widget-user-header" style="padding: 12px; height: 100px; background-color: #ce7f03">
          @if(count($qa)>0)
          <h3 class="widget-user-username" style="font-size: 22px; color: whitesmoke">{{$qa[0]->name}}</h3>
          <h5 class="widget-user-desc" style="font-size: 10px; color: whitesmoke">NIP {{$qa[0]->nip}}</h5>
          @else
          @endif
        </div>
        <div class="widget-user-image" style="top: 50px;">
          <img class="img-circle" src={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}./la-assets/img/badsit.jpg alt="user avatar">
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
                @if(count($qa)>0)
                <p class="description-header">{{$qa[0]->es1}}</p>
                <span class="description-text">{{$qa[0]->es2}}</span>
                @else
                @endif
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
            @foreach($Danalis as $danalis)
            <li><a href={{str_replace(' ', '%20',$danalis->file)}} target="_blank">{{$danalis->jenis}}</a></li>
            @endforeach

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
            @foreach($Drancang as $drancang)
            <li><a href={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}.{{str_replace(' ', '%20',$drancang->file)}} target="_blank">{{$drancang->jenis}}</a></li>
            @endforeach
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
            @foreach($Dkembang as $dkembang)
            <li><a href={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}.{{str_replace(' ', '%20',$dkembang->file)}} target="_blank">{{$dkembang->jenis}}</a></li>
            @endforeach
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
            @foreach($Duji as $duji)
            <li><a href={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}.{{str_replace(' ', '%20',$duji->file)}} target="_blank">{{$duji->jenis}}</a></li>
            @endforeach
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
            @foreach($Dimplemen as $dimplemen)
            <li><a href={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}.{{str_replace(' ', '%20',$dimplemen->file)}} target="_blank">{{$dimplemen->jenis}}</a></li>
            @endforeach
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
            @foreach($Dpcim as $dpcim)
            <li><a href={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}.{{str_replace(' ', '%20',$dpcim->file)}} target="_blank">{{$dpcim->jenis}}</a></li>
            @endforeach
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
{{--<script src="{{ asset('la-assets/plugins/progress-bar-master/app.js') }}"></script>--}}
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

      //we can set animation delay as following in ms (default 1000)
      ProgressBar.singleStepAnimation = 1500;
      ProgressBar.init(
          [
              'Analisa Kebutuhan',
              'Perancangan',
              'Pengembangan',
              'Pengujian',
              'Implementasi',
              'Pasca Implementasi',
              'Selesai'
          ],
          '{{ $status }}',
          'progress-bar-wrapper' // created this optional parameter for container name (otherwise default container created)
      );

  </script>
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
		thumbnail: '<img width="40" height="40" style="display: inline-block;" src={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}./la-assets/img/gambaruser.jpg data-src="assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">'
	}).show();
})(window.jQuery);
</script>
@endpush