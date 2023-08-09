
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
                                <label for="Favicon">Favicon</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="pva_title.png">Preview</span>
                                <input type="file" class="form-control" name="favicon">
                            </div>
                            <div class="form-group">
                                <label for="Logo">Logo</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="file" class="form-control" name="logo">
                            </div>
                            <div class="form-group">
                                <label for="logo_alt">Logo Alt</label>
                                <input type="text" class="form-control" placeholder="Input Logo Alt Here" name="logo_alt">
                            </div>
                            <div class="form-group">
                                <label for="Facebook">Facebook Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Facebook Link Here" name="fb_link">
                            </div>
                            <div class="form-group">
                                <label for="Instagram">Instagram Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Instagram Link Here" name="insta_link">
                            </div>
                            <div class="form-group">
                                <label for="Twitter">Twitter Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Twitter Link Here" name="twitter_link">
                            </div>
                            <div class="form-group">
                                <label for="Linked">Linked In Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Linked In Link Here" name="linkedin_link">
                            </div>
                            
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="Pinterest">Pinterest Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Pinterest Link Here" name="pinterest_link">
                            </div>
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Your Email Here" name="email">
                            </div>
                            <div class="form-group">
                                <label for="Skype">Skype</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Skype Link Here" name="skype">
                            </div>
                            <div class="form-group">
                                <label for="WhatsApp">WhatsApp</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter WhatsApp Link Here" name="whatsapp">
                            </div>
                            <div class="form-group">
                                <label for="Telegram">Telegram</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Telegram Link Here" name="telegram">
                            </div>
                            <div class="form-group">
                                <label for="Github">Github</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Github Here" name="github_link">
                            </div>
                            <div class="form-group">
                                <label for="Youtube">Youtube</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Youtube Here" name="youtube_link">
                            </div>

                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="About">Phone</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Phone Number Here" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Address Here" name="address">
                            </div>
                            <div class="form-group">
                                <label for="Product">Product Title</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Product Title" name="product_title">
                            </div>
                            <div class="form-group">
                                <label for="title">Team Title</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Team Title" name="team_title">
                            </div>
                            <div class="form-group">
                                <label for="About">About Us Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <textarea name="about_des" class="form-control" id=""  rows="2" placeholder="Enter About Us Description Here"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="About">FAQ Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="pva_title.png">Preview</span>
                                <textarea name="faq_ques" class="form-control" id=""  rows="2" placeholder="Enter FAQ Description Here"></textarea>
                            </div>
                        </div> 
                    </div>
                    <div class="row">
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

@endsection
