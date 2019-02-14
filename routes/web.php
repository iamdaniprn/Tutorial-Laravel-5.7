<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('halo', function () {
	return "Halo, Selamat datang di tutorial laravel www.malasngoding.com";
});


// Route::get('blog', function () {
// 	return view('blog');
// });


Route::get('dosen', 'DosenController@index');


// Route::get('/pegawai/{nama}', 'PegawaiController@index');


Route::get('/formulir', 'PegawaiController@formulir');
Route::post('/formulir/proses', 'PegawaiController@proses');


// route blog
Route::get('/blog', 'BlogController@home');
Route::get('/blog/tentang', 'BlogController@tentang');
Route::get('/blog/kontak', 'BlogController@kontak');

//crud pegawai
//route CRUD
Route::get('/pegawai','PegawaiController@index');
Route::get('/pegawai/tambah','PegawaiController@tambah');
Route::post('/pegawai/store','PegawaiController@store');
Route::get('/pegawai/edit/{id}','PegawaiController@edit');
Route::post('/pegawai/update','PegawaiController@update');
Route::get('/pegawai/hapus/{id}','PegawaiController@hapus');

//pagination
Route::get('/karyawan','KaryawanController@index');
//pencarian
Route::get('/karyawan/cari','KaryawanController@cari');



//Eloquent CRUD
//job
Route::get('/job', 'JobController@index');
Route::get('/job/where', 'JobController@where');
Route::get('/job/tambah', 'JobController@tambah');
Route::post('/job/store', 'JobController@store');
Route::get('/job/edit/{pegawai_id}', 'JobController@edit');
Route::put('/job/update/{id}', 'JobController@update');
Route::get('/job/hapus/{id}', 'JobController@delete');

//soft delete
Route::get('/guru', 'GuruController@index');
Route::get('/guru/hapus/{id}', 'GuruController@hapus');
Route::get('/guru/trash', 'GuruController@trash');
Route::get('/guru/kembalikan/{id}', 'GuruController@kembalikan');
Route::get('/guru/kembalikan_semua', 'GuruController@kembalikan_semua');
Route::get('/guru/hapus_permanen/{id}', 'GuruController@hapus_permanen');
Route::get('/guru/hapus_permanen_semua', 'GuruController@hapus_permanen_semua');


//relasi database
Route::get('/pengguna', 'PenggunaController@index');
Route::get('/article', 'WebController@index');