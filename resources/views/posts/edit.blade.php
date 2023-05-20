@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>
            Edit post
        </h1>
        <form action="{{ url('/update/'.$post->id) }}" method="post">
           @csrf
            <div class="form-group">
                <label for="name">title</label>
                <input type="text" name="title" id="name" value="{{$post->title}}"  class="form-control"/>
            </div>
            <div class="form-group">
                <label for="name">Body</label>
                <textarea  name="body" id="name"  class="form-control">{!!$post->body!!}
                </textarea>
            </div>
            <br>
            <div class="form-group">
                <input type="submit" name="" value="save Post" class="btn btn-primary" />
            </div>
        </form>

    </div>
@endsection
