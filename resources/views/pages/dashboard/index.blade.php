@extends('layouts.dashboard.app')

@section('title', 'Dashboard')


@push('after-style')

        <!-- DataTables -->
        <link href="{{ url('assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ url('assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="{{ url('assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

@endpush


@section('content')


<div class="row">
    <div class="col-xl-12">
        <h5 class="card-title">Our Feature</span></h5>
        <div class="row">
            <div class="col-xl-3 col-sm-6">
                <div class="card text-center">
                    <div class="card-body">
                        <div class="dropdown text-end">

                        </div>

                        <div class="mx-auto mb-2">
                            <h2 class="mb-sm-0">Pendaftaran Pemeriksaan</h2>
                        </div>
                        <h5 class="font-size-16 mb-1"><a href="#" class="text-dark">Pendaftaran Pemeriksaan</a></h5>
                    </div>

                    <div class="btn-group" role="group">
                        <a href="{{ route('admin.pendaftaranpemeriksaan.index')}}"class="btn btn-outline-primary text-truncate"><i class="uil uil-user me-1"></i>Pergi ke Pendaftaran Pemeriksaan</a>
                    </div>
                </div>
                <!-- end card -->
            </div>

            <div class="col-xl-3 col-sm-6">
                <div class="card text-center">
                    <div class="card-body">
                        <div class="dropdown text-end">

                        </div>

                        <div class="mx-auto mb-2">
                            <h2 class="mb-sm-0">Kelola Poli</h2>
                        </div>
                        <h5 class="font-size-16 mb-1"><a href="#" class="text-dark">Kelola Poli</a></h5>
                    </div>

                    <div class="btn-group" role="group">
                        <a href="{{ route('admin.poli.index')}}"class="btn btn-outline-primary text-truncate"><i class="uil uil-user me-1"></i>Pergi ke Kelola Poli</a>
                    </div>
                </div>
                <!-- end card -->
            </div>


            <div class="col-xl-3 col-sm-6">
                <div class="card text-center">
                    <div class="card-body">
                        <div class="dropdown text-end">

                        </div>

                        <div class="mx-auto mb-2">
                            <h2 class="mb-sm-0">Konfirmasi KTP</h2>
                        </div>
                        <h5 class="font-size-16 mb-1"><a href="#" class="text-dark">Konfirmasi KTP</a></h5>
                    </div>

                    <div class="btn-group" role="group">
                        <a href="{{ route('admin.verifikasiktp.index')}}"class="btn btn-outline-primary text-truncate"><i class="uil uil-user me-1"></i>Pergi ke Konfirmasi KTP</a>
                    </div>
                </div>
                <!-- end card -->
            </div>

            <div class="col-xl-3 col-sm-6">
                <div class="card text-center">
                    <div class="card-body">
                        <div class="dropdown text-end">

                        </div>

                        <div class="mx-auto mb-2">
                            <h2 class="mb-sm-0">Upload Informasi</h2>
                        </div>
                        <h5 class="font-size-16 mb-1"><a href="#" class="text-dark">Upload Informasi</a></h5>
                    </div>

                    <div class="btn-group" role="group">
                        <a href="{{ route('admin.uploadinformasikesehatan.index')}}"class="btn btn-outline-primary text-truncate"><i class="uil uil-user me-1"></i>Pergi ke Upload Informasi</a>
                    </div>
                </div>
                <!-- end card -->
            </div>
        </div>
    </div>
</div>

<div>
    <div class="card">
        <div class="card-header">
            <h4 class="card-title">Informasi Kesehatan</h4>
            <p class="card-title-desc">Slideshow tentang informasi kesehatan yang disediakan oleh klinik</p>
        </div><!-- end card header -->

        <div class="card-body">
                                        <div class="card-body">
                                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-inner" role="listbox">
                                        @foreach ($model as $key => $kegiatans )
                                        <div class="carousel-item {{$key == 0 ? 'active' : ''}}">
                                            
                                        <img width="100%" height="600px" src="https://puskeslinggarjati.com/public/uploads/{{ $kegiatans->path_gambar }}" alt="First slide">
                                            
                                        </div>
                                        @endforeach

                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div><!-- end carousel -->
                                    </div>
        </div>
    </div>
</div>



@endsection
