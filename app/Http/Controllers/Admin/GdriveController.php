<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\GdriveLink;
use Illuminate\Http\Request;

class GdriveController extends Controller
{
    public function index()
    {
        $links = GdriveLink::all();
        return view('admin/gdrive/index', compact('links'));
    }

    public function add(Request $request)
    {
        GdriveLink::create($request->all());
        return redirect()->route('gdrive.index');
    }

    public function delete($id)
    {
        $link = GdriveLink::findOrFail($id);
        $link->delete();
        return redirect()->route('gdrive.index');
    }
}

