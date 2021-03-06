@extends('la.layouts.app')

@section('htmlheader_title')
	Project View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	<!-- <div class="bg-primary clearfix"> -->
		<div class="col-md-4">
			<div class="row">
				<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/projects') }}" data-toggle="tooltip" data-placement="right" title="Kembali Ke Proyek"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info" class="fa fa-bars" class="name">{{ $project->$view_col }} </a></li>		
		</ul>
		
		
	
				<!-- <div class="col-md-3"> -->
					<!--<img class="profile-image" src="{{ asset('la-assets/img/avatar5.png') }}" alt="">-->
					<!-- <div class="profile-icon text-primary"><i class="fa {{ $module->fa_icon }}"></i></div>
				</div> -->
		<!-- 		<div class="col-md-9">
					<h4 class="name">{{ $project->$view_col }}</h4>
									</div> -->
			</div>

		</div>
<!-- 		<div class="col-md-8">
			@la_access("Projects", "edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/projects/'.$project->id.'/edit') }}" class="btn btn-xs btn-edit btn-default pull-right"><i class="fa fa-pencil"></i></a><br>
			@endla_access
			
			@la_access("Projects", "delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.projects.destroy', $project->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-xs btn-delete btn-deafult pull-right" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endla_access
		</div> -->
	</div>

<!-- 	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/projects') }}" data-toggle="tooltip" data-placement="right" title="Back to Projects"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> Kembali Ke Proyek</a></li>
		
	</ul> -->
	<div class="col-lg-12" >
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading"> 
						<div class="pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/projects/cetak/'.$id) }}" data-toggle="tooltip" data-placement="left" title="Download Laporan"><img src={{str_replace("index.php","",$_SERVER["PHP_SELF"])}}./la-assets/img/docx-icon.png width="50"></a></div><h4>Informasi</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'nama')
						@la_display($module, 'dasar')
						@la_display($module, 'inisiator')
						@la_display($module, 'instansi')
						@la_display($module, 'deskripsi')
						@la_display($module, 'start_date')
							
					</div>					 
				</div>
			</div>
		</div>@include ('la.projects.tombol')
	</div>
	</div>
	</div>
</div>
@endsection
