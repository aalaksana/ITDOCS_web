@extends('la.layouts.app')

@section('htmlheader_title') Unggah Dokumen @endsection
@section('contentheader_title') Inisiasi Proyek Sistem Informasi @endsection
@section('contentheader_description') Kemudahan proses bisnis Anda, dimulai dari sini @endsection

@section('main-content')
		<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title" style="font-weight:bold;">Unggah Dokuemen</h3>
				</div>
				<div class="box-body">
					<div class="row">
						<div class="col-lg-3">
							<label> Proyek </label>
						</div>
						<div class="col-lg-9">	
							 <div class="btn-group">
						<button class="	btn btn-default" type="button" style="width: 100px">	Pilih</button>
						<button class="	btn btn-default dropdown-toggle" type="button"  data-toggle="dropdown" aria-expanded="false">
							<span class="sr-only" >toggle dropdown</span>
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="#">Siap</a>
							</li>
							<li>
								<a href="#">Salah</a>
							</li>	
							<li>
								<a href="#">Pelatih</a>
							</li>		
						</ul>
							</div> 
						</div>
					</div> <br>
						<div class="row">
						<div class="col-lg-3">
							<label> Jenis Dokumen </label>
						</div>
						<div class="col-lg-9">	
							 <div class="btn-group">
						<button class="	btn btn-default " type="button" style="width: 100px">Pilih</button>
						<button class="	btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
							<span class="sr-only">toggle dropdown</span>
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="#">Siap</a>
							</li>
							<li>
								<a href="#">Salah</a>
							</li>	
							<li>
								<a href="#">Pelatih</a>
							</li>		
						</ul>
					</div> 
						</div>
					</div><br>
					<div class="row">
						<div class="col-lg-3">
							<label> Tanggal Disetujui</label>
						</div>
						<div class="col-lg-9">
							<div class="input-group date">
								<div class="input-group-addon">
									<i class="fa fa-calendar"></i>
									</div>
									<input type="text" class="form-control pull-right" id="datepicker" placeholder="Tanggal Anda Disetujui...">
							</div>							
						</div>
					</div><br>
					<div class="row">
						<div class="col-lg-3">
							<label> Penanda Tangan </label>
						</div>
						<div class="col-lg-9">	
							 <div class="btn-group">
						<button class="	btn btn-default " type="button" style="width: 100px">Pilih</button>
						<button class="	btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
							<span class="sr-only">toggle dropdown</span>
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="#">Siap</a>
							</li>
							<li>
								<a href="#">Salah</a>
							</li>	
							<li>
								<a href="#">Pelatih</a>
							</li>		
						</ul>
					</div> 
						</div>
					</div><br>
					<div class="row">
						<div class="col-lg-3">
							<label> Keterangan </label>
						</div>
						<div class="col-lg-9">
							<div class="form-group">
							<input class="form-control" placeholder="Keterangan ....." type="text">
							</div>
						</div>
					</div><br>
					<div class="row">
						<div class="col-lg-3">
							<label> Unggah Dokumen PDF Yang Telah Ditanda Tangani </label>
						</div>
						<div class="col-lg-9">
							 <div class="btn btn-primary btn-file">
                            <i class="fa fa-upload"></i>
                            File Max 1MB
                            <input type="file" name="dokumen">
                        </div>	
						</div>
					</div><br>
					<div class="box-footer">
					<div class="row" style="margin-left:86%">
						<button type="button" class="btn btn-default" style="color: red">Batal</button>
                        <button type="submit" class="btn bg-green-active btn-success">Simpan</button>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>

					

				
                        
@endsection