<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
Use Illuminate\Support\Facades\Redirect;
Use Illuminate\Support\Facades\Storage;

class SliderController extends Controller
{
    //

    public function save_slider(Request $request){

            $this->validate($request, [
                'product_image' => 'image|nullable|max:1999'
            ]);

            if ($request->hasFile('product_image')) {

                // 1 : Get file name with extension

                $filenameWithExt = $request->file('product_image')->getClientOriginalName();

                // 2 : Get just file name

                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);

                // 3 : Get just The extensio

                $extension = $request->file('product_image')->getClientOriginalExtension();

                // 4 : file name to store

                $fileNameToStore = $filename.'_'.time().'.'.$extension;

                // 5 : path

                $path = $request->file('product_image')->storeAs('public/cover_images', $fileNameToStore);

                } else {
                    $fileNameToStore = 'noimage.jpg';
                }

            $data = array();
            $data['description1'] = $request->description1;
            $data['description2'] =$request->description2;
            $data['slider_image'] = $fileNameToStore;
            $data['status'] = $request->product_status;

            DB::table('tbl_sliders')
                ->insert($data);

            Session::put('message', 'The slider is added successfully');

            return redirect::to('/add_slider');  

    }

    public function unactivate_slider($id){
        
        $data = array();
        $data['status'] = 0;

        DB::table('tbl_sliders')
                ->where('id', $id)
                ->update($data);

            Session::put('message', 'Slider unactivated successfully');

            return redirect::to('/sliders');
    }

    public function activate_slider($id){
        
        $data = array();
        $data['status'] = 1;

        DB::table('tbl_sliders')
                ->where('id', $id)
                ->update($data);

            Session::put('message', 'Slider activated successfully');

            return redirect::to('/sliders');
    }

    public function delete_slider($id){

        $select_image = DB::table('tbl_sliders')
                            ->where('id', $id)
                            ->first();

        if($select_image->slider_image != 'noimage'){
            Storage::delete('public/cover_images/'.$select_image->slider_image);
        }
        
        DB::table('tbl_sliders')
            ->where('id', $id)
            ->delete();

        Session::put('message', 'The slider is deleted successfully');

        return redirect::to('/sliders');
    }

    public function edit_slider($id){

        $select_slider = DB::table('tbl_sliders')
                            ->where('id', $id)
                            ->first();

        $manage_slider = view('admin.edit_slider')
                ->with('select_slider', $select_slider);

        return view('layouts.appadmin')
        ->with('admin.edit_slider', $manage_slider);
    }

    public function update_slider(Request $request){

        $this->validate($request, [
            'product_image' => 'image|nullable|max:1999'
        ]);

        if ($request->hasFile('product_image')) {

            // 1 : Get file name with extension

            $filenameWithExt = $request->file('product_image')->getClientOriginalName();

            // 2 : Get just file name

            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);

            // 3 : Get just The extensio

            $extension = $request->file('product_image')->getClientOriginalExtension();

            // 4 : file name to store

            $fileNameToStore = $filename.'_'.time().'.'.$extension;

            // 5 : path

            $path = $request->file('product_image')->storeAs('public/cover_images', $fileNameToStore);

            } else {
                $fileNameToStore = 'noimage.jpg';
            }


            $data = array();
            $data['description1'] = $request->description1;
            $data['description2'] = $request->description2;
            $data['status'] = $request->product_status;


            if($request->hasFile('product_image')){
                $select_image_name = DB::table('tbl_sliders')
                                        ->where('id', $request->slider_id)
                                        ->first();

                $data['slider_image'] = $fileNameToStore;

                if($select_image_name->slider_image != 'noimage'){
                    Storage::delete('public/cover_images/'.$select_image_name->slider_image);
                }
            }

            DB::table('tbl_sliders')
                ->where('id', $request->slider_id)
                ->update($data);

            Session::put('message', 'The slider is updated successfully');

            return redirect::to('/sliders'); 
    }
}
