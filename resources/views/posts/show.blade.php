@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>
             Blog
        </h1>
{{--        @if (auth()->check())--}}
{{--      user is register--}}
{{--            {{auth()->user()}}--}}
{{--         @else--}}
{{--        user isn't register--}}

{{--        @endif--}}
{{--        <a href="/post/create" class="btn btn-danger"> Add Post</a>--}}
        <hr>

        <div class="card mb-3">
            <img height="200px" src="{{asset('/img/img.jpg')}}" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{$post->title}}</h5>
                <p class="card-text">{{$post->body}}</p>
           </div>
            @if (auth()->check())
            <div>
                <h4>comments:</h4>
                @isset($post->comments)
                    @foreach($post->comments as $comment)
                        <div>
                            <h5 style="padding: 2px 0px 2px 10px">{{$comment->comment}}</h5>
                            <div class="container py-2">
                                @isset($comment->replays)
                                    @foreach($comment->replays as $rep)
                                        <p>{{$rep->comment}}</p>
                                    @endforeach
                                @endisset
                            </div>
                            <form action="{{route('replay_comment')}}" method="post">
                                @csrf
                                <input type="hidden" value="{{$post->id}}" name="post_id">
                                <input type="hidden" value="{{auth()->user()->id}}" name="user_id">
                                <input type="hidden" value="{{$comment->id}}" name="replay_id">
                                <input name="comment" placeholder=" replay for comment ..." width="50%" style="width: 40%;border-top: none;border-right:none;border-left:none;border-radius: 100px;padding: 4px">
                                <button class="btn btn-primary" style="border-radius: 50px">send</button>
                            </form>
                            <br>
                        </div>
                    @endforeach
                @endisset
            </div>
            @endif

        </div>
        @if (auth()->check())
             <form action="{{route('save_comment')}}" method="post">
                 @csrf
                 <input type="hidden" value="{{$post->id}}" name="post_id">
                 <input type="hidden" value="{{auth()->user()->id}}" name="user_id">
                 <input name="comment" placeholder=" your comment ..." width="100%" style="width: 40%;border-radius: 100px;padding: 4px">
                 <button class="btn btn-primary" style="border-radius: 50px">send</button>
             </form>
        @endif


    </div>
@endsection
