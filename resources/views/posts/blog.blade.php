@extends('layouts.app')

@section('content')
    <div class="container">
        @if (session('message'))
            <div class="alert alert-success">
                {{ session('message') }}
            </div>
        @endif
        <h1>
            My Blogs
        </h1>
        <a href="/post/create" class="btn btn-danger"> Add Post</a>
        <hr>

        <table class="table table-bordered">
            <tr>
                <th>
                    Title
                </th>

                <th>
                    Created at
                </th>
                <th>Action</th>
            </tr>
            @foreach($posts as $post)
                <tr>
                    <td>
                        <a href="{{url('/post/'.$post->id)}}" style="text-decoration:none ">{{ $post->title }}</a>
                    </td>
                    <td>
                        {{ $post->created_at }}
                    </td>
                    <td>
                        <a href="{{url('/edit/'.$post->id)}}" class="btn btn-primary">edit</a>
                        <a href="{{url('/delete/'.$post->id)}}" class="btn btn-danger">delete</a>
                    </td>
                </tr>
            @endforeach
        </table>
    </div>
@endsection
