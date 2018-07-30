<?php  
$label='';
$oke=0;
$not=0;
$status=$tombols[0]->status;
$stattext=str_replace(array(0,1,2,3,4,5,6,7), array('Input Proyek','Analisa','Perancangan','Pengembangan','Pengujian','Implementasi','Pasca Implementasi','Selesai'), $status);
if(($status=='0') && ($role[0]->id==$tombols[0]->inisiator ||$role[0]->id==1))//kondisi jika status status=0(inisiasi) dan user ini=inisiator atau admin
{	$oke=1;
    $label="Ajukan";
}
elseif(($status=='6') && ($role[0]->id==$tombols[0]->inisiator ||$role[0]->id==1))//kondisi jika status status=6(pc_implemen) dan user ini=inisiator atau admin
{	$oke=1;$not=1;
    $label="Selesai";
} 
elseif (($status>='1' ||$status<='5') && $role[0]->name=="PROJECT MAN")
{	$oke=1;$not=1;
    $label="Setujui";
}

?>
<div class="alert alert-info">
	Status Proyek saat ini sedang dalam tahap <strong>{{$stattext}}</strong>
@if($not==1)
<a href="{{str_replace("index.php","admin/projects/batal",$_SERVER["PHP_SELF"])}}{{$tombols[0]->id}}" class="btn btn-danger pull-right"><i class="fa fa-warning"> Tolak</i></a>
@else
@endif

@if($oke==1)
<a href="{{str_replace("index.php","admin/projects/setuj",$_SERVER["PHP_SELF"])}}{{$tombols[0]->id}}" class="btn btn-success pull-right"><i class="fa fa-check-square-o"> {{$label}}</i></a>
@else
@endif
</div>