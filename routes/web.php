<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', [App\Http\Controllers\PostController::class, 'index'])->name('home');


Auth::routes();

Route::get('/home', [App\Http\Controllers\PostController::class, 'index'])->name('home');
Route::resource('post',PostController::class);



Route::middleware(['auth'])->group(function () {
    Route::get('/create', [App\Http\Controllers\PostController::class, 'create'])->name('create');
    Route::post('post/store',[PostController::class,'store']);
    Route::post('post/{id}',[PostController::class,'show']);
    Route::get('/post/create', [App\Http\Controllers\PostController::class, 'create'])->name('create');
    Route::get('/blog',[PostController::class ,'blog'])->name('blog');
    Route::get('/edit/{id}',[PostController::class ,'edit'])->name('edit');
    Route::post('/update/{id}',[PostController::class ,'update'])->name('update');
    Route::get('/delete/{id}',[PostController::class ,'delete'])->name('delete');
    Route::post('/comment',[\App\Http\Controllers\CommentController::class ,'save_comment'])->name('save_comment');
    Route::post('/replay_comment',[\App\Http\Controllers\CommentController::class ,'replay_comment'])->name('replay_comment');

});


Route::get('/markAsRead/{id}',function ($id){
    // auth()->user()->unreadNotifications->markAsRead();
    //return true;
    auth()->user()->unreadNotifications
        ->where('id', $id)
        ->first()
        ->markAsRead();
});

Route::get('/markAsRead2/{id}',function ($id){
    // auth()->user()->unreadNotifications->markAsRead();
    //return true;
    auth()->user()->unreadNotifications
        ->where('id', $id)
        ->first()
        ->markAsRead();
    return redirect('/');
});
Route::get('/get-last-notification', function () {
    $lastNotification = auth()->user()->unreadNotifications()->latest()->first();
    //dd($lastNotification);
    return response()->json($lastNotification);
});
