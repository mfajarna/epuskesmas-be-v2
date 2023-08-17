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
                    <h4 class="card-title">Edit Website Setting</h4>
                    <p class="card-title-desc"> Website Setting</p>
                </div>

                <div class="px-2">
                    <form method="POST" action="{{ route('admin.update-websetting', $model->id) }}">
                        @csrf

                        <label for="nama_poli" class="col-form-label">Nama Website:</label>
                        <input type="text" class="form-control mb-2" id="nama_website" name="nama_website" value="{{ $model->nama_website }}" required>


                        <button type="submit" name="submit" class="btn btn-success waves-effect waves-light">Simpan</button>

                </form>

                </div>

            </div>
        </div>
    </div>


@endsection

@push('after-script')
<script>

</script>
@endpush
