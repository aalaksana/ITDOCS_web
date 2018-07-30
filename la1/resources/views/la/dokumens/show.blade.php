@extends('la.layouts.app')

@section('htmlheader_title')
	Dokumen View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	<!-- <div class="bg-primary clearfix"> -->
		<div class="col-md-4">
			<div class="row">
				<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/dokumens') }}" data-toggle="tooltip" data-placement="right" title="Back to Dokumens"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info" class="fa fa-bars"class="name">{{ $dokumen->$view_col }}</a></li>		
	</ul>
				<!-- <div class="col-md-3">
					<img class="profile-image" src="{{ asset('la-assets/img/avatar5.png') }}" alt="">
					<div class="profile-icon text-primary"><i class="fa {{ $module->fa_icon }}"></i></div>
				</div> -->
				<!-- <div class="col-md-9">
					<h4 class="name">{{ $dokumen->$view_col }}</h4>
					
				</div> -->
			</div>
		</div>		
		<div class="col-md-4">
			<!--
			<div class="teamview">
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user1-128x128.jpg') }}" alt=""><i class="status-online"></i></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user2-160x160.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user3-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user4-128x128.jpg') }}" alt=""><i class="status-online"></i></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user5-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user6-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user7-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user8-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user5-128x128.jpg') }}" alt=""></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user6-128x128.jpg') }}" alt=""><i class="status-online"></i></a>
				<a class="face" data-toggle="tooltip" data-placement="top" title="John Doe"><img src="{{ asset('la-assets/img/user7-128x128.jpg') }}" alt=""></a>
			</div>
			-->
			
		</div>
	<!-- 	<div class="col-md-1 actions">
			@la_access("Dokumens", "edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/dokumens/'.$dokumen->id.'/edit') }}" class="btn btn-xs btn-edit btn-default"><i class="fa fa-pencil"></i></a><br>
			@endla_access
			
			@la_access("Dokumens", "delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.dokumens.destroy', $dokumen->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-default btn-delete btn-xs" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endla_access
		</div> -->
	</div>

	<!-- <ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/dokumens') }}" data-toggle="tooltip" data-placement="right" title="Back to Dokumens"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> Informasi</a></li>		
	</ul> -->
	<div class="col-lg-12">
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>Informasi Dokumen</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'project_id')
						@la_display($module, 'file')
						@la_display($module, 'jenis')
						@la_display($module, 'deskripsi')
						@la_display($module, 'uploaded_by')
						@la_display($module, 'approved_by')
						@la_display($module, 'status')
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	</div>
	</div>
</div>
@endsection
