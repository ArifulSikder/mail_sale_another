@extends('backend.layouts.master')

@section('title', 'Inbox')

@section('section')


<div class="content-wrapper" style="min-height: 1302.12px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Inbox</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Inbox</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <a href="compose.html" class="btn btn-primary btn-block mb-3">Compose</a>

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Folders</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item active">
                  <a href="#" class="nav-link">
                    <i class="fas fa-inbox"></i> Inbox
                    <span class="badge bg-primary float-right">12</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-envelope"></i> Sent
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-file-alt"></i> Drafts
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fas fa-filter"></i> Junk
                    <span class="badge bg-warning float-right">65</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-trash-alt"></i> Trash
                  </a>
                </li>
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Labels</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-danger"></i>
                    Important
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-warning"></i> Promotions
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-circle text-primary"></i>
                    Social
                  </a>
                </li>
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Inbox</h3>

              <div class="card-tools">
                <div class="input-group input-group-sm">
                  <input type="text" class="form-control" placeholder="Search Mail">
                  <div class="input-group-append">
                    <div class="btn btn-primary">
                      <i class="fas fa-search"></i>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <span class="border pl-2 pr-1 py-1">
                  <input style="cursor: pointer;" type="checkbox" name="" id="select_all_ids"> 
                </span>
                <div class="btn-group ml-2 mt-0">
                  <!-- delete button -->
                  <a class="btn btn-default btn-sm" id="deleteAllSelectedRecord"> 
                    <i class="far fa-trash-alt"></i>
                  </a>
                </div>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" id="pagereload">
                  <i class="fas fa-sync-alt"></i>
                </button>
                <div class="float-right">
                  1-50/200
                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm">
                      <i class="fas fa-chevron-left"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm">
                      <i class="fas fa-chevron-right"></i>
                    </button>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.float-right -->
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <tbody>
                    @forelse($messages as $message)
                      <tr id="employee_ids{{ $message->id }}">
                        <td>
                          <div>
                            <input style="cursor: pointer" type="checkbox" name="ids" id="" class="checkbox_ids" value="{{ $message->id }}">
                          </div>
                        </td>
                        <td class="mailbox-star"><a href="#"><i class="fas fa-star-o text-warning"></i></a></td>
                        <td class="mailbox-name"><a href="{{ route('show-individual-message', ['id' => $message->id]) }}">{{ $message->name }}</a></td>
                        <td class="mailbox-subject">{{ Str::words($message->message, 10, ' ....')  }}</td>
                        <td class="mailbox-attachment">
                          @if ($message->active_status == 0)
                             <a href="{{ route('update-contact-status', ['id' => $message->id , 'status' => $message->active_status ]) }}" class=""><span class="badge badge-danger">Inactivated</span></a> 
                          @else
                            <a href="{{ route('update-contact-status', ['id' => $message->id , 'status' => $message->active_status ]) }}"><span class="badge badge-success">Activated</span></a>
                          @endif
                        </td>
                        <td class="mailbox-date">28 mins ago</td>
                      </tr>
                    @empty
                      <tr>Empty</tr>
                    @endforelse

                  </tbody>
                </table>
                <!-- /.table -->
              </div>
              <div class="float-right my-2">
                {{ $messages->links() }}
            </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.card-body -->
            <div class="card-footer p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <div class="float-right">
                  1-50/200
                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-sm">
                      <i class="fas fa-chevron-left"></i>
                    </button>
                    <button type="button" class="btn btn-default btn-sm">
                      <i class="fas fa-chevron-right"></i>
                    </button>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.float-right -->
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

@endsection

@section('script')
  <script>

    $(function(e){
      $("#select_all_ids").click(function () { 
        $('.checkbox_ids').prop('checked', $(this).prop('checked'));
      });

      $('#deleteAllSelectedRecord').click(function (e) { 
          e.preventDefault();
          var all_ids = [];   
          $('input:checkbox[name=ids]:checked').each(function(params) {
            all_ids.push($(this).val()); 
          });

          $.ajax({
            type: "DELETE",
            url: "{{ route('delete-customer-message') }}",
            data: {
              ids:all_ids,
            },
            headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
              $.each(all_ids, function (key, val) { 
                 $('#employee_ids'+val).remove();
              });
              if (response.success) {
                  toastr.success(response.success);
              } else if (response.error) {
                  toastr.error(response.error);
              }
            },
          });
        });
    });

  </script>

<script>
  $(document).ready(function () {
    $("#pagereload").click(function (e) { 
      e.preventDefault();
      window.location.reload();
    });
  });
</script>
@endsection
