<?php

namespace App\Http\Controllers;

use App\Models\SeoPage;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class SeoPageController extends Controller
{

    public function seoPagesIndex(Request $request){
        $search = $request->search;
        $data['pages'] = SeoPage::latest()
            ->when($search !== null, function ($query) use ($search) {
                return $query->where('title', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        // $data['pages'] = SeoPage::latest()->paginate(10);
        return view('backend.seo.indexSeoContent',$data);
    }

    public function addSeoPageContent(){
        return view('backend.seo.addSeoContent');
    }

    public function storeSeoPageContent(Request $request){
             
            $image = "";
            if ($request->file('image')) {
                $image = uploadPlease($request->file('image'));
            }
        
            $seo = new SeoPage();
            $seo->slug = $request->slug;
            $seo->author = $request->author;
            $seo->description = $request->description;
            $seo->title = $request->title;
            $seo->keywords = $request->keywords;
            $seo->published_time = Carbon::parse($request->published_time);
            $seo->modified_time = Carbon::parse($request->modified_time);
            $seo->expiration_time = Carbon::parse($request->expiration_time);
            $seo->section = $request->section;
            $seo->canonical = $request->canonical;
            $seo->og_locale = $request->og_locale;
            $seo->og_url = $request->og_url;
            $seo->og_type = $request->og_type;
            $seo->image_url = $request->image_url;
            $seo->image_height = $request->image_height;
            $seo->link_img_size = $request->link_img_size;
            $seo->image_width = $request->image_width;
            $seo->twitter_side = $request->twitter_side;
            $seo->image = $image;
            $seo->created_by = Auth::id();
            $seo->save();
       

        

        if ($seo == true) {
            $notification = ([
                'success' => 'SEO Content Updated Successfully',
            ]);
        } else {
            $notification = ([
                'error' => 'Opps! Something is wrong...!',
            ]);
        }
        return redirect('/pages-list')->with($notification);
    }

    public function pageContentUpdate($seo_id) {
        $data['page'] = SeoPage::findOrFail($seo_id);
        return view('backend.seo.updateSeoContent', $data);
    }

    public function updateSeoPageContent(Request $request){
        
        $seo = SeoPage::findOrFail($request->id);
        
        $image = $seo->image;
        if ($request->file('image')) {
            File::delete($seo->image);
            $image = uploadPlease($request->file('image'));
        }
    
        $seo->slug = $request->slug;
        $seo->author = $request->author;
        $seo->description = $request->description;
        $seo->title = $request->title;
        $seo->keywords = $request->keywords;
        $seo->published_time = Carbon::parse($request->published_time);
        $seo->modified_time = Carbon::parse($request->modified_time);
        $seo->expiration_time = Carbon::parse($request->expiration_time);
        $seo->section = $request->section;
        $seo->canonical = $request->canonical;
        $seo->og_locale = $request->og_locale;
        $seo->og_url = $request->og_url;
        $seo->og_type = $request->og_type;
        $seo->image_url = $request->image_url;
        $seo->image_height = $request->image_height;
        $seo->image_width = $request->image_width;
        $seo->twitter_side = $request->twitter_side;
        $seo->link_img_size = $request->link_img_size;
        $seo->image = $image;
        $seo->created_by = Auth::id();
        $seo->save();
   

        

        if ($seo == true) {
            $notification = ([
                'success' => 'SEO Content Updated Successfully',
            ]);
        } else {
            $notification = ([
                'error' => 'Opps! Something is wrong...!',
            ]);
        }
        return redirect('/pages-list')->with($notification);
    }

}
