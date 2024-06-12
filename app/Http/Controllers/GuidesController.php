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
use Illuminate\Database\Eloquent\Builder;

class GuidesController extends Controller
{
    public function index()
    {
        $response = Http::get('https://na.lodestonenews.com/news/topics?limit=5');
        $news = $response->json();

        $title = request('title');
        $class = request('class');

        $guides = Guide::select('id', 'title', 'class_id', 'user_id')->with(['user:id,name', 'ffclass:id,name'])
            ->when($title, function (Builder $query, string $title) {
                $query->where('title', 'LIKE', "%$title%");
            })
            ->when($class, function (Builder $query, string $class) {
                $query->where('class_id', $class);
            })->paginate(10);

        $classes = FFClass::all();

        return Inertia::render('Welcome', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'laravelVersion' => Application::VERSION,
            'phpVersion' => PHP_VERSION,
            'news' => $news,
            'classes' => $classes,
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
        $guide = Guide::select('id', 'title', 'content', 'class_id', 'user_id')->with(['user:id,name', 'ffclass:id,name'])->findOrFail($id);

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

    public function image(Request $request)
    {
        $validatedData = $request->validate([
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:5120',
        ]);

        $name = uniqid() . '.' . $request->image->extension();
        $request->image->move(public_path('images'), $name);

        return "/images/$name";
    }
}
