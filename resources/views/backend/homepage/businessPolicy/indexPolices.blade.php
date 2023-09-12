@extends('backend.layouts.master')

@section('title', 'Show Business Polices')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Business Policy</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Business Policy</li>
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
                    <a href="{{ route('add-business-policy') }}" class="btn btn-success" >
                        <i class="fas fa-plus"></i> Add Business Policy
                    </a>
                </div>
                <form action="">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Policy Type" name="search" value="">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">Home Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 10%">Policy Type</th>
                                <th scope="col" style="width: 50%">Description</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 10%">Add Date</th>
                                <th scope="col" style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($polices->currentpage() - 1) * $polices->perpage() + 1;
                            @endphp 
                            @forelse($polices as $policy)
                                <tr>
                                    <th>{{ $serials++ }}</th>
                                    <td>
                                        @if ($policy->policy_type == 1)
                                            <span>Refund Policy</span>
                                        @elseif($policy->policy_type == 2)
                                            <span>Privacy Policy</span>
                                        @elseif($policy->policy_type == 3)
                                            <span>Terms Of Service</span>
                                        @elseif($policy->policy_type == 4)
                                            <span>Disclaimer</span>
                                        @endif
                                        
                                    </td>

                                    <td>{!! Str::words($policy->description, 15, ' ....')  !!} @if (Str::of($policy->description)->wordCount() > 15)
                                        <a href="" class="editdes" data-description="{{ $policy->description }}">
                                            See More
                                        </a>
                                    @endif 
                                    <td><span
                                            class="badge badge-{{ $policy->active_status == 0 ? 'danger': 'success' }}">{{ $policy->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $policy->created_at->toFormateDate() }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">

                                                @if ($policy->active_status == 0)
                                                   <a href="{{ route('update-policy-status', ['id' => $policy->id , 'status' => $policy->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-policy-status', ['id' => $policy->id , 'status' => $policy->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif

                                                <a href="{{ route('edit-business-policy', $policy->id) }}" class="btn btn-success btn-sm btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </a>

                                                <a href="{{ route('delete-business-policy', $policy->id) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>
                                        </div>


                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <th colspan='6' style="color:red; text-align: center;">No Data Found!</th>
                                </tr>
                                @endforelse
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $polices->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>


  
</div>

{{-- show Description  --}}
<div class="modal fade" id="showdes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Show Description</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <div class="modal-body">

                    <div class="form-group" >
                        <label for="description">Description</label>
                        <p id="description"></p>

                    </div>




                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
        </div>
    </div>
</div>

@endsection

@section('script')
    <script>
    $(document).ready(function () {
        $('.editdes').click(function (e) {
                e.preventDefault();
                $('#showdes').modal('show');
                $("#description").html($(this).data('description'));
        });
    });
</script>
@endsection





