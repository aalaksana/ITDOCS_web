<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use DB; /**

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

        $proyek = DB::select("select p.nama, analisa, perancangan, pengembangan, pengujian, implementasi, pc_implemen, 
            ifnull((select t.nama_pj from teams t where t.peran='Proses Bisnis' and p.id=t.project_id ),0) as id_probis, 
            ifnull((select t.nama_pj from teams t where t.peran='Pengembang SI' and p.id=t.project_id ),0) as id_si, 
            ifnull((select t.nama_pj from teams t where t.peran='Tim QA' and p.id=t.project_id ),0) as id_qa from projects p where p.id=".$id);
        $probis = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_probis);
        $si = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_si);
        $qa = DB::select("select u.name, u.nip, d.nama_instansi, d.es1,d.es2 from users u, departments d
            where u.instansi=d.id and u.id=".$proyek[0]->id_qa);
        $Danalis = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Analisa' and project_id=".$id." order by d.id");
        $Drancang = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Perancangan' and project_id=".$id." order by d.id");
        $Dkembang = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Pengembangan' and project_id=".$id." order by d.id");
        $Duji = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Pengujian' and project_id=".$id." order by d.id");        
        $Dimplemen = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Implementasi' and project_id=".$id." order by d.id");
        $Dpcim = DB::select("select d.jenis from dokumens d , doctypes t 
            where d.jenis=t.jenis and t.tahap='Pasca Implementasi' and project_id=".$id." order by d.id");

        

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
                'Dpcim' => $Dpcim
            ]);       

        
    }
}