@extends('admin.layouts.admin_layout')

@section('title','IOA')

@section('main-content')

<div class="admin-container">
	
	@php
        $tbx['tb'] = 1;
        $tbx['title'] = 'Add Testimonial';
        $route_name = 'testimonial';
        $dummy_image = asset('assets/img/other/testimonial.jpg');
    @endphp
    @include('admin.includes.title-bar')

	<form class="row" action="{{route($route_name.'.store')}}" enctype="multipart/form-data" id="myForm">
		<input type="hidden" value="CREATE" name="action">
		<div class="col-md-7">
			<div class="col-12">
				<label for="" class="form-label">Name</label>
				<input type="text" class="form-control" name="name">
			</div>
			<div class="col-12">
				<label for="" class="form-label">Place</label>
				<input type="text" class="form-control" name="place">
			</div>
			<div class="col-12">
				<label class="form-label">Message</label>
				<textarea class="form-control" name="message"></textarea> 
			</div>
			<div class="col-12">
				<label for="" class="form-label">Status</label>
				<select id="" class="form-select" name="status">
					<option value="1" selected>Active</option>
					<option value="0">Deactive</option>
				</select>
			</div>
		</div>
		<div class="col-md-5">
			<img src="{{$dummy_image}}" id="showBanner" class="show-banner img-hover" data-dummy-image="{{$dummy_image}}">
			<input accept="image/*" type='file' name="image" id="inputBanner" class="invisible" />
		</div>
		<div class="col-12">
			<button type="button" class="btn btn-primary fs-4 mt-4 disable_btn" onclick="submit_form()">
				Save 
				{!! Hpx::spinner() !!}
			</button>
		</div>
	</form>

</div>
@endsection


@section('script')
<script type="text/javascript">

	$(document).ready(function(){
		image_edit('#showBanner');
	});

	function submit_form(){
		var x = new Ajx;
		x.form = '#myForm';
		x.ajxLoader('#myForm .loaderx');
		x.disableBtn('#myForm .disable_btn');
		x.globalAlert(true);
		x.reset = true;
		x.start(function(response){
			if(response.status == true){
				showBanner.src = "{{$dummy_image}}";
			}
		});
	}
</script>
@endsection

