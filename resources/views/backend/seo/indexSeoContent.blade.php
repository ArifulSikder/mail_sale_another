@extends('backend.layout.app')

@section('title', 'SEO Pages')

@section('section')
<div id="main-content">
    <div class="block-header">
        <div class="row clearfix">
            <div class="col-md-6 col-sm-12">
                <a href="{{ url('add-seo-pages') }}" class="btn btn-sm btn-primary addbtn" title="">Add
                    New</a>
            </div>
            <div class="col-md-6 col-sm-12 text-right">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('dashboard') }}"><i class="icon-home"></i></a></li>
                    <li class="breadcrumb-item">SEO Pages</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container-fluid">

        <div class="row clearfix">

            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="body">
                        <h4>Static Pages Slug: </h4>
                        <ul>
                            <li class="static_page_name">| welcome-page |</li>
                            <li class="static_page_name">| home |</li>
                            <li class="static_page_name">| product |</li>
                            <li class="static_page_name">| company-overview |</li>
                            <li class="static_page_name">| blogs |</li>
                            <li class="static_page_name">| contact |</li>
                            <li class="static_page_name">| faq |</li>
                        </ul>
                    </div>
                </div>
                <div class="card planned_task">
                    <div class="header">
                        <h2>SEO Content Table</h2>
                        <ul class="header-dropdown dropdown dropdown-animated scale-left">
                            <li> <a href="javascript:void(0);" data-toggle="cardloading" data-loading-effect="pulse"><i
                                        class="icon-refresh"></i></a></li>
                            <li><a href="javascript:void(0);" class="full-screen"><i
                                        class="icon-size-fullscreen"></i></a></li>
                        </ul>
                    </div>
                    <div class="body">

                        <div class="card text-sm">
                            <!-- /.card-header -->
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="width: 5%">Serial</th>
                                            <th style="width: 30%">Title</th>
                                            <th style="width: 30%">Slug</th>
                                            <th style="width: 20%">Action</th>
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

                                                    <a href="{{ url('page-delete/' . $page->id) }}"
                                                        id="delete" type="button"
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
                                    <div class="float-right my-2">{{ $pages->links() }}</div>
                                </table>
                                
                        <div class="float-left">
                            {{ $pages->links() }}
                        </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>


@endsection
