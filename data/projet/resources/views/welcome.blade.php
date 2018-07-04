<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <title>My fucking website</title>
    </head>
    <body>
        <ul class="nav navbar-nav">
            <li><a href="{{ URL::to('anime/read') }}">Anime</a></li>
            <li><a href="{{ URL::to('movie/read') }}">Movie</a></li>
        </ul>
    </body>
</html>
