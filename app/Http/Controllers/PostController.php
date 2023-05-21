<?php

namespace App\Http\Controllers;

use App\Events\UserRegistertion;
use App\Models\Post;
use App\Models\User;
use App\Notifications\AddPostNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;


class PostController extends Controller
{
    public function index()
    {
        $posts = Post::paginate(10);
        //return $posts;
        return view('posts.index', compact('posts'));
    }

    public function create()
    {
        return view('posts.create');
    }

    public function store(Request $request)
    {
        //return ($request);
        $post = new Post();
        $post->title = $request->title;
        $post->body = $request->body;
        $post->user_id = auth()->user()->id;
        $post->view = 0;

        if($post->save()){
            $users= User::all();
            Notification::send($users,new AddPostNotification($post));
            event(new UserRegistertion($post));
        }
       return redirect('/post');
    }

    public function show(Request $request , $id){
       $post = Post::with(['comments.replays.rereplays','comments.replays','comments' => function ($query) use ($id) {
           $query->where('replay_id', 0);
       }])->find($id);
    //return $post;
        return view('posts.show', compact('post'));
    }

    public function blog(Request $request ){
        $id = auth()->user()->id;

        $posts = Post::where('user_id',$id)->get();
        //return $posts;
        return view('posts.blog', compact('posts'));
    }

    public function edit(Request $request ,$id){

        $post = Post::find($id);

        return view('posts.edit', compact('post'));
    }

    public function update(Request $request ,$id){

        $post = Post::find($id);

        $post->update([
            'title'=> $request->title,
            'body'=> $request->body
        ]);
       return redirect('/blog')->with(['message'=>' successfult updated']);

    }

    public function delete($id){

        $post = Post::find($id);

        $post->delete();
        return redirect()->back()->with(['message'=>' successfult deleted']);

    }
}
