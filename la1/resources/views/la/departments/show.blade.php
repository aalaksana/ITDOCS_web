@extends('la.layouts.app')

@section('htmlheader_title')
	Department View
@endsection


@section('main-content')
<div id="page-content" class="profile2">
	<div class="bg-primary clearfix">
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-3">
					<!--<img class="profile-image" src="{{ asset('la-assets/img/avatar5.png') }}" alt="">-->
					<div class="profile-icon text-primary"><i class="fa {{ $module->fa_icon }}"></i></div>
				</div>
				<div class="col-md-9">
					<h4 class="name">{{ $department->$view_col }}</h4>
									</div>
			</div>
		</div>
		<div class="col-md-1 actions">
			@la_access("Departments", "edit")
				<a href="{{ url(config('laraadmin.adminRoute') . '/departments/'.$department->id.'/edit') }}" class="btn btn-xs btn-edit btn-default"><i class="fa fa-pencil"></i></a><br>
			@endla_access
			
			@la_access("Departments", "delete")
				{{ Form::open(['route' => [config('laraadmin.adminRoute') . '.departments.destroy', $department->id], 'method' => 'delete', 'style'=>'display:inline']) }}
					<button class="btn btn-default btn-delete btn-xs" type="submit"><i class="fa fa-times"></i></button>
				{{ Form::close() }}
			@endla_access
		</div>
	</div>

	<ul data-toggle="ajax-tab" class="nav nav-tabs profile" role="tablist">
		<li class=""><a href="{{ url(config('laraadmin.adminRoute') . '/departments') }}" data-toggle="tooltip" data-placement="right" title="Back to Departments"><i class="fa fa-chevron-left"></i></a></li>
		<li class="active"><a role="tab" data-toggle="tab" class="active" href="#tab-general-info" data-target="#tab-info"><i class="fa fa-bars"></i> Informasi</a></li>
	</ul>

	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active fade in" id="tab-info">
			<div class="tab-content">
				<div class="panel infolist">
					<div class="panel-default panel-heading">
						<h4>Informasi</h4>
					</div>
					<div class="panel-body">
						@la_display($module, 'nama_instansi')
						@la_display($module, 'kl')
						@la_display($module, 'es1')
						@la_display($module, 'es2')
						@la_display($module, 'alamat')
						@la_display($module, 'email')
						@la_display($module, 'telp')
						@la_display($module, 'fax')
					</div>
				</div>
			</div>
		</div>
		<div role="tabpanel" class="tab-pane fade in p20 bg-white" id="tab-timeline">
			<ul class="timeline timeline-inverse">
				<!-- timeline time label -->
				<li class="time-label">
					<span class="bg-red">
						10 Feb. 2014
					</span>
				</li>
				<!-- /.timeline-label -->
				<!-- timeline item -->
				<li>
				<i class="fa fa-envelope bg-blue"></i>

				<div class="timeline-item">
					<span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

					<h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

					<div class="timeline-body">
					Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
					weebly ning heekya handango imeem plugg dopplr jibjab, movity
					jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
					quora plaxo ideeli hulu weebly balihoo...
					</div>
					<div class="timeline-footer">
					<a class="btn btn-primary btn-xs">Read more</a>
					<a class="btn btn-danger btn-xs">Delete</a>
					</div>
				</div>
				</li>
				<!-- END timeline item -->
				<!-- timeline item -->
				<li>
				<i class="fa fa-user bg-aqua"></i>

				<div class="timeline-item">
					<span class="time"><i class="fa fa-clock-o"></i> 5 mins ago</span>

					<h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request
					</h3>
				</div>
				</li>
				<!-- END timeline item -->
				<!-- timeline item -->
				<li>
				<i class="fa fa-comments bg-yellow"></i>

				<div class="timeline-item">
					<span class="time"><i class="fa fa-clock-o"></i> 27 mins ago</span>

					<h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

					<div class="timeline-body">
					Take me to your leader!
					Switzerland is small and neutral!
					We are more like Germany, ambitious and misunderstood!
					</div>
					<div class="timeline-footer">
					<a class="btn btn-warning btn-flat btn-xs">View comment</a>
					</div>
				</div>
				</li>
				<!-- END timeline item -->
				<!-- timeline time label -->
				<li class="time-label">
					<span class="bg-green">
						3 Jan. 2014
					</span>
				</li>
				<!-- /.timeline-label -->
				<!-- timeline item -->
				<li>
				<i class="fa fa-camera bg-purple"></i>

				<div class="timeline-item">
					<span class="time"><i class="fa fa-clock-o"></i> 2 days ago</span>

					<h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

					<div class="timeline-body">
					<img src="http://placehold.it/150x100" alt="..." class="margin">
					<img src="http://placehold.it/150x100" alt="..." class="margin">
					<img src="http://placehold.it/150x100" alt="..." class="margin">
					<img src="http://placehold.it/150x100" alt="..." class="margin">
					</div>
				</div>
				</li>
				<!-- END timeline item -->
				<li>
				<i class="fa fa-clock-o bg-gray"></i>
				</li>
			</ul>
			<!--<div class="text-center p30"><i class="fa fa-list-alt" style="font-size: 100px;"></i> <br> No posts to show</div>-->
		</div>
		
	</div>
	</div>
	</div>
</div>
@endsection
