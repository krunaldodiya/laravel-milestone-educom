<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function getCategories(Request $request)
    {
        $categories = Category::with('chapters.topics.videos')->get();

        return compact('categories');
    }
}
