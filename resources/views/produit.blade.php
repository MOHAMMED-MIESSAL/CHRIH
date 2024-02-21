<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tailwind Starter Template - Nordic Shop: Tailwind Toolbox</title>
    <meta name="description" content="Free open source Tailwind CSS Store template">
    <meta name="keywords"
        content="tailwind,tailwindcss,tailwind css,css,starter template,free template,store template, shop layout, minimal, monochrome, minimalistic, theme, nordic">

    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body class="bg-white text-gray-600 work-sans leading-normal text-base tracking-normal">

    @include('components.navbar')


    <section class="text-gray-600 body-font overflow-hidden">
        <div class="container px-5 py-24 mx-auto">
            <div class="lg:w-4/5 mx-auto flex flex-wrap">
                <img alt="ecommerce" style="object-fit: contain;height: 350px;" class="lg:w-1/2 w-full lg:h-auto h-64 object-cover object-center rounded"
                    src="{{ asset('storage/'.$produit->image)}} ">
                <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
                    <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">{{ $produit->title }}</h1>
                    
                    <p class="leading-relaxed">{{$produit->description}}.</p>
                    <p style=" color:white; background-color: gray; border-radius:5px ;     width: 86px; " >{{ $produit->category->name  }}</p>

                    <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-100 mb-5">
                        <div class="flex" style="flex-wrap: wrap;">
                            <label for="number-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Quantité : <span style="color: #3b82f6">{{$produit->qte}} in stock<br></span></label>
                        </div>
                    </a> 



                    </div>

                    <div class="flex">
                         @auth
                        <span class="title-font font-medium text-2xl text-gray-900">${{$produit->prix }}</span>
                        @if (!$produits_cart->contains('produit_id', $produit->id))
                        <a @auth href="{{route('add_cart',$produit->id)}}" @endauth @guest href="/admin" @endguest class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                            Add to cart
                        </a>
                        @endif
                        @endauth

                        @guest
                        <a  href="/admin"  class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                            Add to cart
                        </a>
                        @endguest
                        



                        <button
                            class="rounded-full w-10 h-10 bg-gray-200 p-0 border-0 inline-flex items-center justify-center text-gray-500 ml-4">
                            <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                class="w-5 h-5" viewBox="0 0 24 24">
                                <path
                                    d="M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z">
                                </path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>


    @include('components.footer')

</body>

</html>
