
<?php  
$label='';
if($tombols[0]->analisa=='input' && $role[0]->id==$tombols[0]->inisiator)//kondisi jika status analisa=input dan user ini=inisiator
{
    $label="Ajukan";
} 
elseif ($tombols[0]->analisa=='diajukan' && $role[0]->id==$tombols[0]->inisiator)
{
    $label="Setujui";
}

?>
<button class="btn btn-success btn-sm pull-right">{{$label}}</button>
<button class="btn btn-danger btn-sm pull-right">Tolak</button>
