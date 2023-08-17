@extends('layouts.dashboard.app')

@section('title', 'Kelola Poli')

@push('after-style')

        <!-- DataTables -->
        <link href="{{ url('assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ url('assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="{{ url('assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

@endpush


@section('content')

    @include('modal.poli.index')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Website Setting</h4>
                    <p class="card-title-desc">Website Setting</p>
                </div>

                <div class="px-2">
                    <table id="table-data" class="table table-bordered dt-responsive nowrap w-100 dataTable no-footer dtr-inline collapsed" role="grid" aria-describedby="datatable_info" style="width: 1573px;">
                        <thead>
                            <tr role="row">
                                <th class="text-center">Id</th>
                                <th class="text-center">Nama Website</th>
                                <th class="text-center">Aksi</th>
                        </thead>

                    </table>
                </div>

            </div>
        </div>
    </div>


@endsection

@push('after-script')
<script>
    $(document).ready(function() {
        var t = $('#table-data').DataTable({
            processing: true,
            serverSide: true,
            "order" : [
                [0, "ASC"],
                [1, "ASC"],
                [2, "ASC"],
            ],
            ajax:{
                url: "{{ route('admin.website-setting.index') }}"
            },
            columnDefs:[
                {targets:'_all', visible: true},
                {
                    "targets": 0,
                    "class": "text-sm",
                    data: "id",
                    name: "id"
                },
                {
                    "targets": 1,
                    "class": "text-sm",
                    data: "nama_website",
                    name: "nama_website"
                },
                {
                    "targets": 2,
                    "class": "text-sm",
                    data: "action",
                    name: "action",
                    orderable: false
                }
            ]
        })




    })




    function closeModal()
            {
                $('#ModalView').modal('hide');
            }
</script>
@endpush
