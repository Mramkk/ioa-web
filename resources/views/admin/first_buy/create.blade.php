@extends('admin.layouts.admin_layout')

@section('title', 'IOA')

@section('main-content')

    <div class="admin-container">

        @php
            $tbx['tb'] = 1;
            $tbx['title'] = 'First Buy';
            $route_name = 'first_buy';
            $dummy_image = asset('assets/img/other/select-image.jpg');
        @endphp
        @include('admin.includes.title-bar')

        <form id="frm" class="row" action="{{ route('admin.first_buy.save') }}" method="POST"
            enctype="multipart/form-data">
            @csrf
            @if (Session::has('success'))
                <div class="row justify-content-end">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <span> {!! Session::get('success') !!}</span>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </div>
                {{ Session::forget('success') }}
            @endif
            @if (Session::has('error'))
                <div class="row justify-content-end">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <span> {!! Session::get('error') !!}</span>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </div>
                {{ Session::forget('error') }}
            @endif

            <div class="col-md-7">

                <div class="col-12">
                    <label for="" class="form-label">Title</label>
                    <input type="text" class="form-control" name="title"
                        onkeyup="this.value = this.value.toUpperCase();">
                    @error('title')
                        <span class="text-danger">* {{ $message }}</span>
                    @enderror
                </div>
                <div class="col-12">
                    <label class="form-label">Description</label>
                    <textarea class="form-control" name="description"></textarea>
                </div>
                
                <div class="col-8">
                    <label class="form-label">Discount</label>
                    <div class="input-group mb-3">
                        <input type="text" name="discount" class="form-control" aria-describedby="basic-addon2"
                            min="1" max="50">
                        <span class="input-group-text fs-4" id="basic-addon2">%</span>
                    </div>
                    @error('discount')
                        <span class="text-danger">* {{ $message }}</span>
                    @enderror
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
                <img src="{{ asset('assets/img/other/select-image.jpg') }}" id="showBanner" class="show-banner img-hover"
                    data-dummy-image="{{ $dummy_image }}">
                <input accept="image/*" type='file' name="image" id="inputBanner" class="invisible" />
                @error('image')
                    <span class="text-danger">* {{ $message }}</span>
                @enderror
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary fs-4 mt-4 disable_btn">
                    Save
                </button>
            </div>
        </form>

    </div>
@endsection


@section('script')
    <script>
        let api = new ApiService();
        $(document).ready(function() {
            genrate()
            $('.alert').alert();
            setTimeout(() => {
                $('.alert').alert('close')
            }, 3000)
            image_edit('#showBanner');

            $('#frm').submit(function(e) {
                $('button[type=submit]').html(
                    `<span class="spinner-border spinner-border-lg" role="status" aria-hidden="true"></span> Save`
                );
            });
        });

    </script>
@endsection
