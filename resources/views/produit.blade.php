<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tailwind Starter Template - Nordic Shop: Tailwind Toolbox</title>
    <meta name="description" content="Free open source Tailwind CSS Store template">
    <meta name="keywords" content="tailwind,tailwindcss,tailwind css,css,starter template,free template,store template, shop layout, minimal, monochrome, minimalistic, theme, nordic">

    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body class="bg-white text-gray-600 work-sans leading-normal text-base tracking-normal">

    @include('components.navbar')


    <section class="text-gray-600 body-font overflow-hidden">
        <div class="container px-5 py-24 mx-auto">
            <div class="lg:w-4/5 mx-auto flex flex-wrap">
                <img alt="ecommerce" style="object-fit: contain;height: 350px;" class="lg:w-1/2 w-full lg:h-auto h-64 object-cover object-center rounded" src="{{ asset('storage/'.$produit->image)}} ">
                <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
                    <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">{{ $produit->title }}</h1>

                    <p class="leading-relaxed">{{$produit->description}}.</p>
                    <p style=" color:white; background-color: gray; border-radius:5px ;     width: fit-content; ">{{ $produit->category->name  }}</p>

                    <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-100 mb-5">
                        <div class="flex" style="flex-wrap: wrap;">
                            <label for="number-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Quantité : <span style="color: #3b82f6">{{$produit->qte}} in stock<br></span></label>
                        </div>
                        </a>



                    </div>

                    <div class="flex">
                        @auth
                        <span class="title-font font-medium text-2xl text-gray-900">${{$produit->prix }}</span>

                        @if ($produits_cart->contains('id', $produit->id))
                        <!-- Product is in the cart, do not display the button -->
                        @else
                        <!-- Product is not in the cart, display the button -->
                        <a @auth href="{{ route('add_cart', $produit->id) }}" @endauth @guest href="/admin" @endguest class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                            Add to cart
                        </a>
                        @endif


                        @endauth

                        @guest
                        <a href="/admin" class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                            Add to cart
                        </a>
                        @endguest




                        @auth

                        @if (!$wishlist->contains('produit_id', $produit->id))
                        <a href="{{ route('add_wishlist', $produit->id) }}">
                            <svg style="    width: 53px;height: auto;" class="h-6 w-6 fill-current text-gray-500 hover:text-black" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path d="M12,4.595c-1.104-1.006-2.512-1.558-3.996-1.558c-1.578,0-3.072,0.623-4.213,1.758c-2.353,2.363-2.352,6.059,0.002,8.412 l7.332,7.332c0.17,0.299,0.498,0.492,0.875,0.492c0.322,0,0.609-0.163,0.792-0.409l7.415-7.415 c2.354-2.354,2.354-6.049-0.002-8.416c-1.137-1.131-2.631-1.754-4.209-1.754C14.513,3.037,13.104,3.589,12,4.595z M18.791,6.205 c1.563,1.571,1.564,4.025,0.002,5.588L12,18.586l-6.793-6.793C3.645,10.23,3.646,7.776,5.205,6.209 c0.76-0.756,1.754-1.172,2.799-1.172s2.035,0.416,2.789,1.17l0.5,0.5c0.391,0.391,1.023,0.391,1.414,0l0.5-0.5 C14.719,4.698,17.281,4.702,18.791,6.205z" />
                            </svg>
                        </a>
                        @endif

                        @if ($wishlist->contains('produit_id', $produit->id))
                        <a href="{{ route('delete_wishlist', $produit->id) }}"><img style="    width: 58px;
                                height: 49px;" src="{{asset('images/love.svg')}}" alt="" srcset=""></a>
                        @endif
                        @endauth


                    </div>
                </div>
            </div>
        </div>
    </section>


    @include('components.footer')

</body>

</html>