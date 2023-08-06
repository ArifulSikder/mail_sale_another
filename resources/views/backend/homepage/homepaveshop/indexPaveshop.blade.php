@extends('backend.layouts.master')

@section('title', 'Show Details')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Home Details</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Home Details</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="my-1 d-flex justify-content-between">
                <div>
                    {{-- <button type="button" class="btn btn-success myProduct" data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add Home Details
                    </button> --}}
                    <a href="{{ route('add-details') }}" class="btn btn-success" >
                        <i class="fas fa-plus"></i> Add Home Details
                    </a>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Home Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 8%">Title</th>
                                <th scope="col" style="width: 15%">Description</th>
                                <th scope="col" style="width: 8%">Active Status</th>
                                <th scope="col" style="width: 7%">Add Date</th>
                                <th scope="col" style="width: 20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($details->currentpage() - 1) * $details->perpage() + 1;
                            @endphp 
                            @foreach($details as $detail)
                                <tr>
                                    <th>{{ $serials++ }}</th>
                                    <td>{{ $detail->title }}</td>
                                    <td>{{ $detail->description }}</td>
                                    <td><span
                                            class="badge badge-{{ $detail->active_status == 0 ? 'danger': 'success' }}">{{ $detail->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $detail->created_at->toFormateDate() }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">

                                                @if ($detail->active_status == 0)
                                                   <a href="{{ route('update-home-status', ['id' => $detail->id , 'status' => $detail->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-home-status', ['id' => $detail->id , 'status' => $detail->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif

                                                <a href="{{ route('edit-details', $detail->id) }}" class="btn btn-success btn-sm btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </a>

                                                <a href="{{ url('delete-home-details/'. $detail->id) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>
                                        </div>


                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $details->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>


  
</div>

@endsection




