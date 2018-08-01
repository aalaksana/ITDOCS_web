<?php  
$label='';
$oke=0;
$not=0;

if(($tombols[0]->status=='0') && $role[0]->id==$tombols[0]->inisiator && $dok[0]->dok0>0)//kondisi jika status status=0(inisiasi) dan user ini=inisiator atau admin
{	$oke=1;
    $label="Ajukan";
}
elseif($tombols[0]->status=='6' && $role[0]->id==$tombols[0]->inisiator && $dok[0]->dok14>0 && $dok[0]->dok15>0)//kondisi jika status status=6(pc_implemen) dan user ini=inisiator dan ada dok14 dok15
{	$oke=1;$not=1;
    $label="Selesai";
} 
elseif ($role[0]->id==$pj[0]->nama_pj && 
		(
			(($dok[0]->dok1>0 || $dok[0]->dok2>0) && $status=='1') ||
			($dok[0]->dok3>0 && $dok[0]->dok4>0 && $status=='2') ||
			($dok[0]->dok5>0 && $dok[0]->dok6>0 && $dok[0]->dok7>0 && $dok[0]->dok70>0 && $status=='3') ||
			($dok[0]->dok71>0 && $dok[0]->dok8>0 && $dok[0]->dok81>0 && $dok[0]->dok9>0 && $status=='4') ||
			($dok[0]->dok10>0 && $dok[0]->dok11>0 && $dok[0]->dok12>0 && $dok[0]->dok13>0 && $status=='5')
		)
		)
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