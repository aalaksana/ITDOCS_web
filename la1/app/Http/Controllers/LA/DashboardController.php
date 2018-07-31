<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use DB; /*452*/
use App\Models\Upload;


/**
 * Class DashboardController
 * @package App\Http\Controllers
 */
class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
    public function index()
    {
        return $this::show(1);
    }

    public function show($id)
    {
        $datas = DB::select("Select * from projects");

        $proyek = DB::select("select p.nama, p.status, 
            ifnull((select t.nama_pj from teams t where t.peran='Proses Bisnis' and p.id=t.project_id limit 1),0) as id_probis, 
            ifnull((select t.nama_pj from teams t where t.peran='Pengembang SI' and p.id=t.project_id limit 1),0) as id_si, 
            ifnull((select t.nama_pj from teams t where t.peran='Tim QA' and p.id=t.project_id limit 1),0) as id_qa from projects p where p.id=".$id);
        $probis = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_probis);
        $si = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_si);
        $qa = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_qa);
        $Danalis = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Analisa' 
            and d.file=u.id and project_id=".$id." order by d.jenis");
        $Drancang = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Perancangan' 
            and d.file=u.id and project_id=".$id." order by d.jenis");
        $Dkembang = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Pengembangan' 
            and d.file=u.id and project_id=".$id." order by d.jenis");
        $Duji = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Pengujian' 
            and d.file=u.id and project_id=".$id." order by d.jenis");        
        $Dimplemen = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Implementasi' 
            and d.file=u.id and project_id=".$id." order by d.jenis");
        $Dpcim = DB::select("select d.jenis, concat('/files/',u.hash,'/',u.name) as file from dokumens d , doctypes t, uploads u
            where d.jenis=t.jenis and t.tahap='Pasca Implementasi' 
            and d.file=u.id and project_id=".$id." order by d.jenis");
        $Progress = DB::select("select a.status from projects a where id=".$id);

        if ($Progress[0]->status == 1){
            $status='Analisa Kebutuhan';
        } elseif ($Progress[0]->status == 2){
            $status='Perancangan';
        } elseif ($Progress[0]->status == 3){
            $status='Pengembangan';
        } elseif ($Progress[0]->status == 4){
            $status='Pengujian';
        } elseif ($Progress[0]->status == 5){
            $status='Implementasi';
        } elseif ($Progress[0]->status == 6){
            $status='Pasca Implementasi';
        } else $status='Pengajuan';

        // $img = Upload::find(2);
        
        // DD(Upload::find(2)->path());

        // dd($probis);
        return View('la.dashboard', [                
                'datas'=>$datas,
                'proyek'=>$proyek,
                'probis'=>$probis,
                'si'=>$si,
                'qa'=>$qa,
                'Danalis' => $Danalis,
                'Drancang' => $Drancang,
                'Dkembang' => $Dkembang,
                'Duji' => $Duji,
                'Dimplemen' => $Dimplemen,
                'Dpcim' => $Dpcim,
                'status' => $status
            ]);       

        
    }
}