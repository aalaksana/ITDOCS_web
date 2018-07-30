@extends('la.layouts.app')

@section('htmlheader_title')
	Team View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
<!-- 	<div class="bg-primary clearfix"> -->
		<div class="col-md-4">
			<div class="row">
				<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/teams') }}" data-toggle="tooltip" data-placement="right" title="Back to Teams"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info" class="fa fa-bars" class="name">{{ $team->$view_col }} </a></li>
		
	</ul>
				<!-- <div class="col-md-3">
					<img class="profile-image" src="{{ asset('la-assets/img/avatar5.png') }}" alt="">
					<div class="profile-icon text-primary"><i class="fa {{ $module->fa_icon }}"></i></div>
				</div> -->
			<!-- 	<div class="col-md-9">
					<h4 class="name">{{ $team->$view_col }}</h4>
									</div> -->
			</div>
		</div>
		<!-- <div class="col-md-1 actions">
			@la_access("Teams", "edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/teams/'.$team->id.'/edit') }}" class="btn btn-xs btn-edit btn-default"><i class="fa fa-pencil"></i></a><br>
			@endla_access
			
			@la_access("Teams", "delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.teams.destroy', $team->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-default btn-delete btn-xs" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endla_access
		</div> -->
	</div>

	<!-- <ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/teams') }}" data-toggle="tooltip" data-placement="right" title="Back to Teams"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> Informasi</a></li>
		
	</ul> -->
	<div class="col-lg-12" >
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>Informasi</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'nama')
						@la_display($module, 'project_id')
						@la_display($module, 'peran')
						@la_display($module, 'nama_pj')
						@la_display($module, 'staf')
					</div>
				</div>
			</div>
		</div>
				
	</div>
	</div>
	</div>
</div>
@endsection
