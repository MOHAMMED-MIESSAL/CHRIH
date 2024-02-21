<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Your favorite</title>
    <meta name="description" content="Free open source Tailwind CSS Store template">
    <meta name="keywords"
        content="tailwind,tailwindcss,tailwind css,css,starter template,free template,store template, shop layout, minimal, monochrome, minimalistic, theme, nordic">

    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('css/panier.css') }}">
</head>

 <body>
    
@include('components.navbar')

<section class="py-24 bg-gray-100 font-poppins dark:bg-gray-700">
    <div class="px-4 py-6 mx-auto max-w-7xl lg:py-4 md:px-6">
        <form action="{{route('mollie')}}" method="post">
        @csrf
            <div>
                <h2 class="mb-8 text-4xl font-bold dark:text-gray-400">my favorite product</h2>
                <div class="p-6 mb-8 border bg-gray-50 dark:bg-gray-800 dark:border-gray-800">
                    <div class="flex-wrap items-center hidden mb-6 -mx-4 md:flex md:mb-8">
                        <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Product picture</h2>
                        </div>
                        <div class="hidden px-4 lg:block lg:w-2/12">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Product name</h2>
                        </div>
                        <div class="hidden px-4 lg:block lg:w-2/12">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Product category</h2>
                        </div>
                     
                        <div class="hidden px-4 lg:block lg:w-2/12">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Price</h2>   
                        </div>
                     
                        <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12 ">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400"> Subtotal</h2>
                        </div>
                    </div>
                    <div class="py-4 mb-8 border-t border-b border-gray-200 dark:border-gray-700">
                        @foreach ($wishlist as $wish)
                        <div class="flex flex-wrap items-center mb-6 -mx-4 md:mb-8">
                            <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                                <div class="flex flex-wrap items-center -mx-4">
                                    <div class="w-full px-4 mb-3 md:w-1/3">
                                        <div class="w-full h-96 md:h-24 md:w-24">
                                            <img src="{{ asset('storage/' . $wish->produit->image) }}" alt="" class="object-contain w-full h-full">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="hidden px-4 lg:block lg:w-2/12">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">{{ $wish->produit->title }}</p>
                            </div>
                        
                            <div class="hidden px-4 lg:block lg:w-2/12">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">{{ $wish->produit->prix }}</p>
                            </div>
                            <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12">
                                @if (!$produits_cart->contains(  $wish->produit->id))
                                <a @auth href="{{route('add_cart',$wish->produit->id)}}" @endauth @guest href="/admin" @endguest class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                                    Add to cart
                                </a>
                                @endif
                                <a class="" href="{{route('delete_wishlist',$wish->produit->id)}}">Delete</a>
                            </div>
                        </div>
                    @endforeach
                        
                        
                    </div>
                </div>
             
            </div>
        </form>
    </div>
</section>


@include('components.footer')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="{{asset('js/wishlist.js')}}"></script>




       