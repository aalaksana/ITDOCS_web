<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ LAConfigs::getByKey('site_description') }}">
    <meta name="author" content="Dwij IT Solutions">

    <meta property="og:title" content="{{ LAConfigs::getByKey('sitename') }}" />
    <meta property="og:type" content="website" />
    <meta property="og:description" content="{{ LAConfigs::getByKey('site_description') }}" />
    
    <meta property="og:url" content="http://laraadmin.com/" />
    <meta property="og:sitename" content="laraAdmin" />
	<meta property="og:image" content="http://demo.adminlte.acacha.org/img/LaraAdmin-600x600.jpg" />
    
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@laraadmin" />
    <meta name="twitter:creator" content="@laraadmin" />
    
    <title>{{ LAConfigs::getByKey('sitename') }}</title>
    
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('/la-assets/css/bootstrap.css') }}" rel="stylesheet">

	<link href="{{ asset('la-assets/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css" />
    
    <!-- Custom styles for this template -->
    <link href="{{ asset('/la-assets/css/main.css') }}" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <script src="{{ asset('/la-assets/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
    <script src="{{ asset('/la-assets/js/smoothscroll.js') }}"></script>


</head>

<body data-spy="scroll" data-offset="0" data-target="#navigation">

<!-- Fixed navbar -->
<div id="navigation" class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b>{{ LAConfigs::getByKey('sitename') }}</b></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#home" class="smoothScroll">Home</a></li>
                <li><a href="#about" class="smoothScroll">About</a></li>
                <li><a href="#contact" class="smoothScroll">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                @if (Auth::guest())
                    <li><a href="{{ url('/login') }}">Login</a></li>
                    <!--<li><a href="{{ url('/register') }}">Register</a></li>-->
                @else
                    <li><a href="{{ url(config('laraadmin.adminRoute')) }}">{{ Auth::user()->name }}</a></li>
                @endif
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>


<section id="home" name="home"></section>
<div id="haderwrap">
    <div class="container">
        <div class="row centered">
            <div class="col-lg-12">
                <h1>{{ LAConfigs::getByKey('sitename_part1') }} <b><a>{{ LAConfigs::getByKey('sitename_part2') }}</a></b></h1>
                <h3>{{ LAConfigs::getByKey('site_description') }}</h3>
                <h3><a href="{{ url('/login') }}" class="btn btn-lg btn-success">Mulai Sekarang</a></h3><br>
            </div>
            <div class="col-lg-2">
                <h5>Rapikan dokumen Anda</h5>
                <p>sebelum tertumpuk dengan yang lain</p>
                <img class="hidden-xs hidden-sm hidden-md" src="{{ asset('/la-assets/img/arrow1.png') }}">
            </div>
            <div class="col-lg-8">
                <img class="img-responsive" src="{{ asset('/la-assets/img/desktop.png') }}" alt="">
            </div>
            <div class="col-lg-2">
                <br>
                <img class="hidden-xs hidden-sm hidden-md" src="{{ asset('/la-assets/img/arrow2.png') }}">
                <h5>Pantau proyek Anda</h5>
                <p>untuk prestasi bersama</p>
            </div>
        </div>
    </div> <!--/ .container -->
</div><!--/ #headerwrap -->


<section id="about" name="about"></section>
<!-- INTRO WRAP -->
<div id="intro">
    <div class="container">
        <div class="row centered">
            <h1>Aplikasi yang dirancang untuk efektifitas</h1>
            <br>
            <br>
            <div class="col-lg-4">
                <i class="fa fa-thumbs-o-up" style="font-size:100px;height:110px;"></i>
                <h3>Mudah digunakan</h3>
                <p>Dibangun dengan perspektif project manager</p>
            </div>
            <div class="col-lg-4">
                <i class="fa fa-cogs" style="font-size:100px;height:110px;"></i>
                <h3>Integritas</h3>
                <p>Setiap capaian diiringi dengan bukti</p>
            </div>
            <div class="col-lg-4">
                <i class="fa fa-users" style="font-size:100px;height:110px;"></i>
                <h3>Division of Labor</h3>
                <p>Pembagian tugas yang jelas untuk masing-masing pihak</p>
            </div>
        </div>
        <br>
        <hr>
    </div> <!--/ .container -->
</div><!--/ #introwrap -->

<!-- FEATURES WRAP -->
<div id="features">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 centered">
                <img class="centered" src="{{ asset('/la-assets/img/mobs.png') }}" alt="">
            </div>

            <div class="col-lg-7">
				<h3 class="feature-title">Apa itu ITDOCS ?</h3><br>
				<ol class="features">
					<li><strong>SDLC based</strong> (Software Developement Life Cycle) &#8211; Mengacu kepada standar SDLC sesuai KMK 351/KMK.01/2011.</li>
					<li>Alat Bantu <strong>Manajemen Proyek</strong> &#8211; Setiap stakeholder bisa memantau perkembangan proyek SI.</li>
					<li>Administrasi <strong>dokumentasi</strong> yang handal</li>
				</ol><br>

				<h3 class="feature-title">Siapa yang diuntungkan oleh ITDOCS ?</h3><br>
                <ol class="features">
					<li><strong>Pemilik proses bisnis </strong> kini dapat memantau proyek mereka yang <strong>terintegrasi</strong> dengan dokumen sah yang terkait.</li>
					<li>Fungsi kontrol dari <strong>pengembang SI</strong> semakin diperkuat dengan membandingkan capaian proyek SI dengan target yang telah ditentukan.</li>
					<li><strong>Unit pengendali internal</strong> mampu memeriksa dokumentasi sistem lewat internet, dari mana dan kapan saja.</li>
				</ol>
            </div>
        </div>
    </div><!--/ .container -->
</div><!--/ #features -->

<section id="contact" name="contact"></section>
<div id="footerwrap">
    <div class="container">
        <div class="col-lg-5">
            <h3>Hubungi Kami</h3><br>
            <p>
				Kelompok 4 Diklat Prakom<br/>
				Kementerian Keuangan RI<br/>
                <a href="https://www.kemenkeu.go.id/" target="_blank">kemenkeu.go.id</a> <br/>
            </p>
			<div class="contact-link"><i class="fa fa-envelope-o"></i> <a href="mailto:rzirwansyah@gmail.com">andre@hehanusa.com</a></div>
        </div>

        <div class="col-lg-7">
            <h3>Tinggalkan kontak Anda</h3>
            <br>
            <form role="form" action="#" method="post" enctype="plain">
                <div class="form-group">
                    <label for="name1">Nama Anda</label>
                    <input type="name" name="Name" class="form-control" id="name1" placeholder="Your Name">
                </div>
                <div class="form-group">
                    <label for="email1">Alamat email</label>
                    <input type="email" name="Mail" class="form-control" id="email1" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label>Komentar Anda</label>
                    <textarea class="form-control" name="Message" rows="3"></textarea>
                </div>
                <br>
                <button type="submit" class="btn btn-large btn-success">KIRIM</button>
            </form>
        </div>
    </div>
</div>
<div id="c">
    <div class="container">
        <p>
            <strong>Copyright &copy; 2018. Powered by <a href="https://www.youtube.com/watch?v=qLSdtbDuTNA"><b>Kelompok 4 Diklat Prakom</b></a>
        </p>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{ asset('/la-assets/js/bootstrap.min.js') }}" type="text/javascript"></script>
<script>
    $('.carousel').carousel({
        interval: 3500
    })
</script>
</body>
</html>
