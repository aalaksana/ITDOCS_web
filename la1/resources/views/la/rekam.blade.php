@extends('la.layouts.app')

@section('htmlheader_title') Rekam @endsection
@section('contentheader_title') Inisiasi Proyek Sistem Informasi @endsection
@section('contentheader_description') Kemudahan proses bisnis Anda, dimulai dari sini @endsection

@section('main-content')
    <div class="row">
        <div class="col-lg-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="font-weight: bold;">Rekam Proyek Anda</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label>Nama Proyek</label>
                                <input type="text" class="form-control" placeholder="Masukkan nama proyek SI Anda...">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Tanggal Mulai Proyek:</label>
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right" id="datepicker" placeholder="Tanggal proyek Anda dimulai...">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Deskripsi Proyek</label>
                        <textarea class="form-control"  rows="4" placeholder="Deskripsikan secara singkat proyek SI Anda..."></textarea>
                    </div>
                    <div class="form-group">
                        <label>Unggah dasar hukum proyek Anda</label>
                        <br>
                        <div class="btn btn-primary btn-file">
                            <i class="fa fa-upload"></i>
                            PDF Max 1MB
                            <input type="file" name="dokumen">
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <div class="row" style="margin-left : 86%;">
                        <button type="button" class="btn btn-default" style="color: red">Batal</button>
                        <button type="submit" class="btn bg-green-active btn-success">Simpan</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection