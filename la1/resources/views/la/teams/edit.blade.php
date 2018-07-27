@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/teams') }}">Team</a> :
@endsection
@section("contentheader_description", $team->$view_col)
@section("section", "Teams")
@section("section_url", url(config('laraadmin.adminRoute') . '/teams'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Teams Edit : ".$team->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($team, ['route' => [config('laraadmin.adminRoute') . '.teams.update', $team->id ], 'method'=>'PUT', 'id' => 'team-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'nama')
					@la_input($module, 'project_id')
					@la_input($module, 'peran')
					@la_input($module, 'nama_pj')
					@la_input($module, 'staf')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/teams') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#team-edit-form").validate({
		
	});
});
</script>
@endpush
