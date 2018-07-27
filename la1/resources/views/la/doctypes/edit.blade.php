@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/doctypes') }}">Doctype</a> :
@endsection
@section("contentheader_description", $doctype->$view_col)
@section("section", "Doctypes")
@section("section_url", url(config('laraadmin.adminRoute') . '/doctypes'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Doctypes Edit : ".$doctype->$view_col)

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
				{!! Form::model($doctype, ['route' => [config('laraadmin.adminRoute') . '.doctypes.update', $doctype->id ], 'method'=>'PUT', 'id' => 'doctype-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'jenis')
					@la_input($module, 'role')
					@la_input($module, 'tahap')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/doctypes') }}">Cancel</a></button>
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
	$("#doctype-edit-form").validate({
		
	});
});
</script>
@endpush
