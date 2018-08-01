<?php

namespace App\Http\Controllers\LA;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;

use App\Models\Project;


class NotifController extends Controller
{
    //
    public function index() {
        return Response::json(['project'=>Project::all()]);
    }

    public function show($id) {
        $project = Project::find($id);
        return $project;
    }
}
