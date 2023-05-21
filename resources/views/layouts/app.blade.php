<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/main.js') }}" ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!-- Fonts -->

    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-dark bg-black shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav me-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown" id="" >
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    <i style="color: red" class="fa fa-bell"></i>
                                    <span class="badge">{{count(auth()->user()->unreadNotifications )}}</span>

                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                                    <ul class="dropdown" id="li_down" role="menu">
                                        @foreach(auth()->user()->unreadNotifications as $notify)
                                            <li   id="markasread" onclick="markNotificationAsRead('{{$notify->id}}')">
                                                    commented on your
                                                <a href="">
                                                    <strong>{{ $notify->data['data']  }}</strong>
                                                </a></li>
                                        @endforeach

                                    </ul>

                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{route('blog')}}" >
                                        my blogs
                                    </a>
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>

    <script src="{{asset('js/main.js')}}"></script>

    <script src="https://use.fontawesome.com/90b42ec0b5.js"></script>
    <script>
        function markNotificationAsRead(id) {
            // if(notificationCount !=='0'){

              $.get('/markAsRead/'+id);
            //alert(id);
            //}
            }
    //</script>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://js.pusher.com/7.2/pusher.min.js"></script>

  <script>

        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

                    var pusher = new Pusher('2c1628492c2d8b6f6051', {
                        cluster: 'ap1'
                    });
                    var channel = pusher.subscribe('notify-channel');
                    //alert('succfuly')
                    channel.bind('user-register', function(data) {
                        console.log(JSON.stringify(data));
                      //   console.log(notify)
                        var notificationsCount = parseInt($('#navbarDropdown .badge').text());
                        $('#navbarDropdown .badge').text(notificationsCount + 1);
                        //     var li = '<li id="markasread" onclick="markNotificationAsRead(' + data.id + ')">commented on your <a href=""><strong>' + data['post']['title'] + '</strong></a></li>';
                        // $('#li_down').prepend(li);
                        $.ajax({
                            type: "get",
                            url: "/get-last-notification",
                            success: function (data2) {
                               // console.log(data)
                                $('#navbarDropdown .badge').text(notificationsCount + 1);
                                var li = '<li id="markasread" onclick="markNotificationAsRead(' + data2.id + ')">commented on your' +
                                    ' <a href="/markAsRead2/'+data2.id+'"><strong>' + data['post']['title']+ '</strong></a></li>';
                                $('#li_down').prepend(li);
                            }
                        });

                        //markNotificationAsRead(data["post"]["id"]); // تحديث حالة الإشعار في قاعدة البيانات
                    });
    </script>
</body>
</html>
