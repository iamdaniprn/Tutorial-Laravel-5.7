<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//memanggil library database
use Illuminate\Support\Facades\DB;

class KaryawanController extends Controller
{
    public function index()
	{
    	// mengambil data dari table pegawai
		$pegawai = DB::table('pegawai')->paginate(10);
 
    	// mengirim data pegawai ke view index
		return view('karyawan',['pegawai' => $pegawai]);
	}

	public function cari(Request $request)
	{
		// menangkap data pencarian
		$cari = $request->cari;
 
    	// mengambil data dari table pegawai sesuai pencarian data
		$pegawai = DB::table('pegawai')
		->where('pegawai_nama','like',"%".$cari."%")
		->paginate();
 
    	// mengirim data pegawai ke view index
		return view('karyawan',['pegawai' => $pegawai]);
 
	}
}
