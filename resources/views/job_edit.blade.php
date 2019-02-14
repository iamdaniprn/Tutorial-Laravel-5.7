<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Tutorial Laravel #21 : CRUD Eloquent Laravel - www.malasngoding.com</title>
    </head>
    <body>
        <div class="container">
            <div class="card mt-5">
                <div class="card-header text-center">
                    CRUD Data Pegawai - <strong>EDIT DATA</strong> - <a href="https://www.malasngoding.com/category/laravel" target="_blank">www.malasngoding.com</a>
                </div>
                <div class="card-body">
                    <a href="/job" class="btn btn-primary">Kembali</a>
                    <br/>
                    <br/>
                    

                    <form method="post" action="/job/update/{{ $pegawai->id }}">

                        {{ csrf_field() }}
                        {{ method_field('PUT') }}

                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" name="pegawai_nama" class="form-control" placeholder="Nama pegawai .." value=" {{ $pegawai->pegawai_nama }}">

                            @if($errors->has('pegawai_nama'))
                                <div class="text-danger">
                                    {{ $errors->first('pegawai_nama')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <label>Alamat</label>
                            <textarea name="pegawai_alamat" class="form-control" placeholder="Alamat pegawai .."> {{ $pegawai->pegawai_alamat }} </textarea>

                             @if($errors->has('pegawai_alamat'))
                                <div class="text-danger">
                                    {{ $errors->first('pegawai_alamat')}}
                                </div>
                            @endif

                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-success" value="Simpan">
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </body>
</html>