<?php

namespace App\Http\Controllers;

use App\Models\ModelWebsiteSetting;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class WebsitesettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $model = ModelWebsiteSetting::latest()->get();


        if(request()->ajax())
        {
            return DataTables::of($model)
                            ->addColumn('action', function($tipe)
                            {
                                $button = "<div class='d-flex gap-3 align-center'>";

                                $button .= "<a href='edit-website-setting/". $tipe->id ."' name='edit' id='" . $tipe->id ."' class='button text-primary'><i class='mdi mdi-pencil font-size-18'></i></a>";

                                $button .= "</div>";

                                return $button;
                            })
                            ->rawColumns(['action'])
                            ->make(true);
        }


        return view('pages.dashboard.settings.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $model = ModelWebsiteSetting::findOrFail($id);

        return view('pages.dashboard.settings.edit', compact('model'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $model = ModelWebsiteSetting::findOrFail($id);
        $model->update($request->all());

        toast()->success('Berhasil membuat hasil pemeriksaan pasien');

        return redirect()->route('admin.website-setting.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
