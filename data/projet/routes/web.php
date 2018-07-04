<?php

// Routes

Route::get('/', function () {
    return view('welcome');
});

/* Routes for Anime */

Route::get('/anime/read', 'Anime_Controller@read');
Route::get('/anime/create', 'Anime_Controller@create');
Route::post('/anime/update', 'Anime_Controller@update');
Route::post('/anime/delete', 'Anime_Controller@delete');

/* Routes for Movie */

Route::get('/movie/read', 'Movie_Controller@read');
Route::get('/movie/create', 'Movie_Controller@create');
Route::post('/movie/update', 'Movie_Controller@update');
Route::post('/movie/delete', 'Movie_Controller@delete');