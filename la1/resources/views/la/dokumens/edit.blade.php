@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/dokumens') }}">Dokumen</a> :
@endsection
@section("contentheader_description", $dokumen->$view_col)
@section("section", "Dokumens")
@section("section_url", url(config('laraadmin.adminRoute') . '/dokumens'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Dokumens Edit : ".$dokumen->$view_col)

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
				{!! Form::model($dokumen, ['route' => [config('laraadmin.adminRoute') . '.dokumens.update', $dokumen->id ], 'method'=>'PUT', 'id' => 'dokumen-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'project_id')
					@la_input($module, 'file')
					@la_input($module, 'jenis')
					@la_input($module, 'deskripsi')
					@la_input($module, 'uploaded_by')
					@la_input($module, 'approved_by')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/dokumens') }}">Cancel</a></button>
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
	$("#dokumen-edit-form").validate({
		
	});
});
</script>
@endpush
