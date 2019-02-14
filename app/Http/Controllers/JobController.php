<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// panggil model pegawai
use App\Pegawai;

class JobController extends Controller
{
    public function index()
    {
    	// mengambil data pegawai
    	$pegawai = Pegawai::all();
 
    	// mengirim data pegawai ke view pegawai
    	return view('job', ['pegawai' => $pegawai]);
    }


    public function pertama()
    {
    	// mengambil data pertama pegawai
    	$pegawai = Pegawai::first(1);
 
    	// mengirim data pegawai ke view pegawai
    	return view('job', ['pegawai' => $pegawai]);
    }


    public function id()
    {
    	// mengambil data pertama pegawai
    	$pegawai = Pegawai::first(1);
 
    	// mengirim data pegawai ke view pegawai
    	return view('job', ['pegawai' => $pegawai]);
    }


    public function where()
    { 
		// mengambil data pegawai yang bernama Jamal Uwais
		$pegawai = Pegawai::where('pegawai_nama', 'Dani Purnama'); 

		// mengambil data pegawai yang bernama Jamal Uwais
		$pegawai = Pegawai::where('nama', '=' , 'Jamal Uwais'); 

		// mengambil data pegawai yang id nya lebih besar dari 10
		$pegawai = Pegawai::where('id', '>' , 10);

		// mengambil data pegawai yang id nya lebih besar sama dengan 10 
		$pegawai = Pegawai::where('id', '>=' , 10);

		// mengambil data pegawai yang di namanya ada huruf a 
		$pegawai = Pegawai::where('nama', 'like' , '%a%');

		// menampilkan 10 data pegawai per halaman
		$pegawai = Pegawai::paginate(10);

		// mengirim data pegawai ke view pegawai 
		return view('job', ['pegawai' => $pegawai]); 
	}


	public function tambah()
    {
    	return view('job_tambah');
    }


    public function store(Request $request)
    {
    	$this->validate($request,[
    		'pegawai_nama' => 'required',
    		'pegawai_alamat' => 'required'
    	]);
 
        Pegawai::create([
    		'pegawai_nama' => $request->pegawai_nama,
    		'pegawai_alamat' => $request->pegawai_alamat
    	]);
 
    	return redirect('/job');
    }


	public function edit($id)
	{
	   $pegawai = Pegawai::find($id);

	   // $pegawai = Pegawai::where('pegawai_id', '=' , $id);
	   return view('job_edit', ['pegawai' => $pegawai]);
	}	


	public function update($id, Request $request)
	{
	    $this->validate($request,[
		   'pegawai_nama' => 'required',
		   'pegawai_alamat' => 'required'
	    ]);

	    $pegawai = Pegawai::find($id);
	    $pegawai->pegawai_nama = $request->pegawai_nama;
	    $pegawai->pegawai_alamat = $request->pegawai_alamat;
	    $pegawai->save();
	    return redirect('/job');
	}

	public function delete($id)
	{
	    $pegawai = Pegawai::find($id);
	    $pegawai->delete();
	    return redirect('/job');
	    // return redirect()->back();
	}

}
