
<?php  
$label='';
$label2='Tolak';
if($tombols[0]->status=='0' && ($role[0]->id==$tombols[0]->inisiator ||$role[0]->id==1))//kondisi jika status analisa=input dan user ini=inisiator
{
    $label="Ajukan";
    $label2="Batal";
} 
elseif ($tombols[0]->status=='1' && $role[0]->id==$tombols[0]->inisiator)
{
    $label="Setujui";
}

?>
<a href="#" class="btn btn-danger pull-right"><i class="fa fa-warning"> {{$label2}}</i></a>
<a href="{{str_replace("index.php","admin/projects/setuju",$_SERVER["PHP_SELF"])}}/{{$tombols[0]->id}}" class="btn btn-success pull-right"><i class="fa fa-check-square-o"> {{$label}}</i></a>