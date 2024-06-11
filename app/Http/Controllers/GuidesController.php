<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Auth;
use App\Models\Guide;
use App\Models\FFClass;

class GuidesController extends Controller
{
    public function index()
    {

        $response = Http::get('https://na.lodestonenews.com/news/topics?limit=5');
        $news = $response->json();

        $guides = Guide::select('id', 'title', 'user_id', 'class_id')->with(['user:id,name', 'ffclass:id,name'])->paginate(10);

        return Inertia::render('Welcome', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'laravelVersion' => Application::VERSION,
            'phpVersion' => PHP_VERSION,
            'news' => $news,
            'guides' => $guides,
        ]);
    }

    public function create()
    {
        $classes = FFClass::all();

        return Inertia::render('Guide', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'classes' => $classes,
        ]);
    }

    public function show($id)
    {
        $guide = Guide::select('id', 'title', 'content', 'class_id', 'user_id')->with(['user:id,name', 'ffclass:id,name'])->find($id);

        return Inertia::render('GuideShow', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'laravelVersion' => Application::VERSION,
            'phpVersion' => PHP_VERSION,
            'guide' => $guide,
        ]);
    }

    public function store()
    {
        request()->validate([
            'title' => ['required'],
            'class' => ['required', 'exists:classes,id'],
            'guide' => ['required', 'max:50000'],
        ]);

        $guide = Guide::create([
            'title' => request('title'),
            'content' => request('guide'),
            'class_id' => request('class'),
            'user_id' => Auth::id()
        ]);
        return redirect("/guide/$guide->id");
    }
}
