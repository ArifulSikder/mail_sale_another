
@extends('backend.layouts.master')

@section('title', 'Add Policy')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">App Setup</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Setup</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">App Setup</h3>
            </div>
            <div class="card-body">
                <form id="appSetup">
                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                                <label for="Facebook">Facebook Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="facebook.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Facebook Link Here" name="fb_link" value="@if($app_data){{ $app_data->fb_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Instagram">Instagram Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="insta.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Instagram Link Here" name="insta_link" value="@if($app_data){{ $app_data->insta_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Twitter">Twitter Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="twitter.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Twitter Link Here" name="twitter_link" value="@if($app_data){{ $app_data->twitter_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Linked">Linked In Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="linkedin.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Linked In Link Here" name="linkedin_link" value="@if($app_data){{ $app_data->linkedin_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Pinterest">Pinterest Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="pinterest.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Pinterest Link Here" name="pinterest_link" value="@if($app_data){{ $app_data->pinterest_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="logo_alt">Logo Alt</label>
                                <input type="text" class="form-control" placeholder="Input Logo Alt Here" name="logo_alt" value="@if($app_data){{ $app_data->logo_alt }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Logo">Logo</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="logo.png">Preview</span>
                                <input type="file" class="form-control" name="logo" id="logo">
                            </div>
                            <div>
                                <img class="d-none mb-3" src="" id="previewLogo" width="60px" alt="">
                            </div>
                            <div>
                                <img  src="@if($app_data){{ $app_data->logo }}@endif" width="60px" alt="">
                            </div>
                        </div>
                        <div class="col-4">
                            
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="email.png">Preview</span>
                                <input type="email" class="form-control" placeholder="Enter Your Email Here" name="email" value="@if($app_data){{ $app_data->email }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Skype">Skype</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="skype.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Skype Link Here" name="skype" value="@if($app_data){{ $app_data->skype }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="WhatsApp">WhatsApp</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter WhatsApp Link Here" name="whatsapp" value="@if($app_data){{ $app_data->whatsapp }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Telegram">Telegram</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Telegram Link Here" name="telegram" value="@if($app_data){{ $app_data->telegram }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Github">Github</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Github Here" name="github" value="@if($app_data){{ $app_data->github }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Youtube">Youtube</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Youtube Here" name="youtube_link" value="@if($app_data){{ $app_data->youtube_link }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Favicon">Favicon</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="favicon.png">Preview</span>
                                <input type="file" class="form-control" name="favicon" id="favicon">
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewFavicon" width="60px" alt="">
                            </div>
                            <div>
                                <img  src="@if($app_data){{ $app_data->favicon }}@endif" width="60px" alt="">
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="About">Phone</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="phone.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Phone Number Here" name="phone" value="@if($app_data){{ $app_data->phone }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="address.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Address Here" name="address" value="@if($app_data){{ $app_data->address }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="Product">Product Heading</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="product_des.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Product Heading" name="product_heading" value="@if($app_data){{ $app_data->product_heading }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="team_heading">Team Heading</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="team_head.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Team Heading" name="team_heading" value="@if($app_data){{ $app_data->team_heading }}@endif">
                            </div>
                            <div class="form-group">
                                <label for="About">Footer Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="about_des.png">Preview</span>
                                <textarea name="about_des" class="form-control" id=""  rows="2" placeholder="Enter About Us Description Here">@if($app_data){{ $app_data->about_des }}@endif</textarea>
                            </div>
                            <div class="form-group">
                                <label for="faq_des">FAQ Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="faq_des.png">Preview</span>
                                <textarea name="faq_des" class="form-control" id=""  rows="2" placeholder="Enter FAQ Description Here">@if($app_data){{ $app_data->faq_des }}@endif</textarea>
                            </div>
                        </div> 
                    </div>
                    <div class="row mt-2">
                        <div class="col-2">
                            <div class="form-group">
                                <button class="text-center btn btn-primary btn-block" type="submit">Update</button>
                            </div>
                        </div>
                    </div>
                </form>
              
            </div>
            <!-- /.card-body -->
          </div>
      </div>
    </section>
  </div>

  <x-select2 />
@endsection

@section('script')
    @include('backend.includes.preview')
    <script>
            $(document).ready(function () {

            // Logo preview
            $("#logo").change(function() {
                pleasePreview(this, 'previewLogo');
            });

            $("#favicon").change(function() {
                pleasePreview(this, 'previewFavicon');
            });
            // ADD DATA
            $("#appSetup").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#appSetup")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-setting') }}",
                    contentType: false,
                    processData: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formdata,
                    success: function (response) {
                        if (response.success) {
                            toastr.success(response.success);
                        } else if (response.error) {
                            toastr.error(response.error);
                        }
                    },
                    error: function (error) {
                        $('.validate').text('');
                        $.each(error.responseJSON.errors, function (field_name, error) { 
                            const errorElement = $('.validate[data-field="' + field_name + '"]');
                            if (errorElement.length > 0) {
                                errorElement.text(error[0]);
                                toastr.error(error);
                            }
                        });
                    },
                    complete: function (done) {
                        if (done.status == 200) {
                            window.location.reload();
                        }
                    }

                });
            });




    
        });
    </script>
   
@endsection
