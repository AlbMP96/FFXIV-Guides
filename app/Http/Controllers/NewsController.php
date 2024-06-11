<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Inertia\Inertia;
use Illuminate\Support\Facades\Route;

class NewsController extends Controller
{
    public function index()
    {
        $response = Http::get('https://na.lodestonenews.com/news/topics');
        $news = $response->json();

        return Inertia::render('News', [
            'canLogin' => Route::has('login'),
            'canRegister' => Route::has('register'),
            'news' => $news,
        ]);
    }
}
