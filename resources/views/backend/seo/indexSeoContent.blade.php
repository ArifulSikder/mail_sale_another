@extends('backend.layouts.master')

@section('title', 'Add SEO Content')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Pages List</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Add SEO Content</li>
                        </ol>
                    </div><!-- /.col -->
                    
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="my-1 d-flex justify-content-end">
                    <form action="">
                        <div class="form-group d-flex">
                            <input class="form-control" type="search" placeholder="Search By Title" name="search" value="{{ $search }}">
                            <button class="btn btn-info btn-sm ml-2">Search</button>
                        </div>
                    </form> 
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">SEO Content Table</div>
                        
                        <div class="body">
                            <div class="card text-sm">
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 10%">Serial</th>
                                                <th style="width: 20%">Title</th>
                                                <th style="width: 20%">Slug</th>
                                                <th style="width: 20%">Type</th>
                                                <th style="width: 30%">Action</th>
                                            </tr>
                                        </thead>
                                        @php
                                            $serial = ($pages->currentpage() - 1) * $pages->perpage() + 1;
                                        @endphp
                                        <tbody>
                                            @forelse($pages as $page)
                                                <tr>
                                                    <td>{{ $serial++ }}</td>
                                                    <td>
                                                        {{ $page->title }}
                                                    </td>

                                                    <td>
                                                        {{ $page->slug }}
                                                    </td>

                                                    <td>
                                                        @if ($page->type)
                                                            {{ $page->type }}
                                                        @else
                                                            Static Page
                                                        @endif
                                                        
                                                    </td>

                                                    <td>

                                                        <a href="{{ url('page-delete/' . $page->id) }}" id="delete"
                                                            type="button"
                                                            class="btn btn-danger btn-sm rounded-pill btn-rounded text-light">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </a>
                                                        <a href="{{ url('page-content-update/' . $page->id) }}"
                                                            type="button"
                                                            class="btn btn-warning btn-sm rounded-pill btn-rounded text-light">
                                                            Update
                                                        </a>
                                                    </td>
                                                </tr>
                                            @empty
                                                <tr>
                                                    <td colspan="6" class="text-center">
                                                        <img width="100px"
                                                            src="{{ asset('backend/assets/images/undraw_void_-3-ggu.svg') }}"
                                                            alt="" srcset="">
                                                        <br>
                                                        No result found!
                                                    </td>
                                                </tr>
                                            @endforelse


                                        </tbody>
                                    </table>

                                    <div class="float-left mt-3">
                                        {{ $pages->links() }}
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>
                </div>
        </section>

    </div>


@endsection
