<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #4 : Passing Data Controller Ke View Laravel - www.malasngoding.com</title>
</head>
<body>

	<h1>Tutorial Laravel</h1>
	<p>{{ $nama }}</p>
	<ul>
		@foreach($matkul as $row)
		<li>{{ $row }}</li>
		@endforeach
	</ul>
	<a href="https://www.malasngoding.com/category/laravel">www.malasngoding.com</a>

</body>
</html>