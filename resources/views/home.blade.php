<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <ul>
        @foreach ($users as $user)
            <li>{{ $user->name }}</li> <br>
            @foreach ($user->produits_panier()->get() as $pro)
                {{ $pro->title }} <br>
            @endforeach
            <p>\\\\\\\\\\\\</p>
        @endforeach
        
    </ul>
</body>
</html>