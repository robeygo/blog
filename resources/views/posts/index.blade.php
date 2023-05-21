@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>
            All Blogs
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
            </tr>
            @foreach($posts as $post)
                <tr>
                    <td>
                        <a href="{{url('/post/'.$post->id)}}">{{ $post->title }}</a>
                    </td>
                    <td>
                        {{ $post->created_at }}
                    </td>
                </tr>
            @endforeach
        </table>


            {{ $posts->links() }}

        <style>

        </style>
    </div>
@endsection
