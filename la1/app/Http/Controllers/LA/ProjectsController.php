<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;

use App\Models\Project;

class ProjectsController extends Controller
{
	public $show_action = true;
	public $view_col = 'nama';
	public $listing_cols = ['id', 'nama', 'dasar', 'inisiator', 'instansi', 'deskripsi', 'start_date', 'status'];
	

	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Projects', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Projects', $this->listing_cols);
		}
	}



/**START --UPDATE HISTORY-AALAKSANA**/
	public function history($tindakan,$insert_id)
	{$user =Auth::user()->id;
			$obValue=DB::select("SELECT * from projects where id=".$insert_id);
			$v1=$tindakan;
			$v2=$obValue[0]->nama;
			$v3='';
			$t='projects';
			$p=$obValue[0]->id;
						
		$query=DB::table('history')->insert(array(
				'user_id' => $user, 
				'value1' => $v1,
				'value2' => $v2,
				'value3' => $v3,
				'tabel' => $t,
				'project' => $p));
	return $query;
	}
/**END --UPDATE HISTORY-AALAKSANA**/

	
	
	/**
	 * Display a listing of the Projects.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Projects');
		
		if(Module::hasAccess($module->id)) {
			return View('la.projects.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new project.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created project in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Projects", "create")) {
		
			$rules = Module::validateRules("Projects", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Projects", $request);
			DB::update("update projects set inisiator=".$user=Auth::user()->id.", instansi=".$user=Auth::user()->instansi." where id=".$insert_id);

			$this::history('input',$insert_id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.projects.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified project.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id2)
	{	$id=str_replace(array("setuj","batal"),"",$id2);
		$aksi=substr($id2,0,5);
		if($aksi=="setuj"){
			DB::update("update projects set status=status+1 where id=".$id);
			return redirect(config('laraadmin.adminRoute')."/projects/".$id);
		}
		if($aksi=="batal"){
			DB::update("update projects set status=status-1 where id=".$id);
			return redirect(config('laraadmin.adminRoute')."/projects/".$id);
		}
		if(Module::hasAccess("Projects", "view")) {
			
			$project = Project::find($id);
			if(isset($project->id)) {
				$module = Module::get('Projects');
				$module->row = $project;
/*START -AALAKSANA*/
			$tombols = DB::select('Select * from projects where id='.$id);
			$user = Auth::user()->id;
			$role= DB::select("SELECT u.id, r.name from roles r, users u, role_user ru 
			WHERE r.id=ru.role_id and ru.user_id=u.id and u.id=".$user);
/*END -AALAKSANA*/
				return view('la.projects.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding",
					'tombols'=> $tombols,
/*AALAKSANA*/		'role' => $role
				])->with('project', $project);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("project"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified project.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Projects", "edit")) {			
			$project = Project::find($id);
			if(isset($project->id)) {	
				$module = Module::get('Projects');
				
				$module->row = $project;
				
				return view('la.projects.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('project', $project);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("project"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified project in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Projects", "edit")) {
			
			$rules = Module::validateRules("Projects", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Projects", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.projects.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified project from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Projects", "delete")) {
			Project::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.projects.index');
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}
	
	/**
	 * Datatable Ajax fetch
	 *
	 * @return
	 */
	public function dtajax()
	{
		$values = DB::table('projects')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Projects');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
				}
				if($col == $this->view_col) {
					$data->data[$i][$j] = '<a href="'.url(config('laraadmin.adminRoute') . '/projects/'.$data->data[$i][0]).'">'.$data->data[$i][$j].'</a>';
				}
				// else if($col == "author") {
				//    $data->data[$i][$j];
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Projects", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/projects/'.$data->data[$i][0].'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Projects", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.projects.destroy', $data->data[$i][0]], 'method' => 'delete', 'style'=>'display:inline']);
					$output .= ' <button class="btn btn-danger btn-xs" type="submit"><i class="fa fa-times"></i></button>';
					$output .= Form::close();
				}
				$data->data[$i][] = (string)$output;
			}
		}
		$out->setData($data);
		return $out;
	}
}
