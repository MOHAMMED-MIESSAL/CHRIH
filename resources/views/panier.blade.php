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

    <link rel="stylesheet" href="{{ asset('css/panier.css') }}">
</head>

 <body>
    
@include('components.navbar')

<section class="py-24 bg-gray-100 font-poppins dark:bg-gray-700">
    <div class="px-4 py-6 mx-auto max-w-7xl lg:py-4 md:px-6">
        <form action="{{route('mollie')}}" method="post">
        @csrf
            <div>
                <h2 class="mb-8 text-4xl font-bold dark:text-gray-400">Your Cart</h2>
                <div class="p-6 mb-8 border bg-gray-50 dark:bg-gray-800 dark:border-gray-800">
                    <div class="flex-wrap items-center hidden mb-6 -mx-4 md:flex md:mb-8">
                        <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Product name</h2>
                        </div>
                        <div class="hidden px-4 lg:block lg:w-2/12">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Price</h2>
                        </div>
                        <div class="w-auto px-4 md:w-1/6 lg:w-2/12 ">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400">Quantity</h2>
                        </div>
                        <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12 ">
                            <h2 class="font-bold text-gray-500 dark:text-gray-400"> Subtotal</h2>
                        </div>
                    </div>
                    <div class="py-4 mb-8 border-t border-b border-gray-200 dark:border-gray-700">
                        @foreach ($produits as $produit)
                            <div class="flex flex-wrap items-center mb-6 -mx-4 md:mb-8">
                                <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                                    <div class="flex flex-wrap items-center -mx-4">
                                        <div class="w-full px-4 mb-3 md:w-1/3">
                                            <div class="w-full h-96 md:h-24 md:w-24">
                                                <a href="{{ route('produit',$produit->id) }}">
                                                <img src="{{ asset('storage/'.$produit->image) }}" alt=""
                                                    class="object-contain  w-full h-full">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="w-2/3 px-4">
                                            <a href="{{ route('produit',$produit->id) }}">
                                            <h2 class="mb-2 text-xl font-bold dark:text-gray-400">{{ $produit->title }}</h2>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="hidden px-4 lg:block lg:w-2/12">
                                    <p class="prices text-lg font-bold text-blue-500 dark:text-gray-400" price="{{ $produit->prix }}">${{ $produit->prix }}</p>
                                </div>
                                <div class="w-auto px-4 md:w-1/6 lg:w-2/12 ">
                                    <div class="inline-flex items-center px-4 font-semibold text-gray-500 border border-gray-200 rounded-md dark:border-gray-700 ">
                                        <button type="button" class="py-2 hover:text-gray-700 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-dash" viewBox="0 0 16 16">
                                                <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z" />
                                            </svg>
                                        </button>

                                        <input type="number" name="qte[]" value="1" max="{{$produit->qte}}" min="1"
                                        class="quantites w-12 px-2 py-4 text-center border-0 rounded-md dark:bg-gray-800 bg-gray-50 dark:text-gray-400 md:text-right"
                                        placeholder="1">
                                        <input type="hidden" name="produits[]" value="{{$produit->id}}">
                                   
                                        



                                        <button type="button" class="py-2 hover:text-gray-700 dark:text-gray-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                                <path
                                                    d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12 ">
                                    <p class="subtotal text-lg font-bold text-blue-500 dark:text-gray-400" subtotal="{{ $produit->prix }}" >${{ $produit->prix }}</p>
                                    <a class="" href="{{route('delete_product_cart',$produit->id)}}"><img style="    margin-left: 135px;    width: 43px; " src="{{asset('images/trash.png')}}" alt="" srcset=""></a>
                                </div>
                                
                            </div>
                        @endforeach
                        
                    </div>
                </div>
                <div class="flex flex-wrap justify-between">
                    <div class="w-full px-4 mb-4 lg:w-1/2 ">
                        <div class="flex flex-wrap items-center gap-4">
                            <span class="text-gray-700 dark:text-gray-400">Apply Coupon</span>
                            <input type="text" id="coupon"
                                class="w-full px-8 py-4 font-normal placeholder-gray-400 border lg:flex-1 dark:border-gray-700 dark:placeholder-gray-500 dark:text-gray-400 dark:bg-gray-800"
                                placeholder="x304k4" >
                            <button type="button" id="btn_coupon"
                                class="inline-block w-full px-8 py-4 font-bold text-center text-gray-100 bg-blue-500 rounded-md lg:w-32 hover:bg-blue-600">
                                Apply
                            </button>
                            
                        </div>
                        <span id="msg_coupon" style="color: red;margin-left: 120px;"></span>
                    </div>
                    <div class="w-full px-4 mb-4 lg:w-1/2 ">
                        <div class="p-6 border border-blue-100 dark:bg-gray-900 dark:border-gray-900 bg-gray-50 md:p-8">
                            <h2 class="mb-8 text-3xl font-bold text-gray-700 dark:text-gray-400">Order Summary</h2>
                            <div
                                class="flex items-center justify-between pb-4 mb-4 border-b border-gray-300 dark:border-gray-700 ">
                                <span class="text-gray-700 dark:text-gray-400">Subtotal</span>
                                <span id="summary_subtotal" class="text-xl font-bold text-gray-700 dark:text-gray-400 "></span>
                            </div>
                            <div class="flex items-center justify-between pb-4 mb-4 ">
                                <span class="text-gray-700 dark:text-gray-400 ">Shipping</span>
                                <span class="text-xl font-bold text-gray-700 dark:text-gray-400 ">Free</span>
                            </div>
                            <div class="flex items-center justify-between pb-4 mb-4 ">
                                <span class="text-gray-700 dark:text-gray-400 ">Coupons</span>
                                <span id="summary_coupon" class="text-xl font-bold text-gray-700 dark:text-gray-400 "></span>
                            </div>
                            <div class="flex items-center justify-between pb-4 mb-4 ">
                                <span class="text-gray-700 dark:text-gray-400">Order Total</span>
                                <span id="summary_total" class="text-xl font-bold text-gray-700 dark:text-gray-400"></span>
                                <input type="hidden" id="mollie_order_total" name="order_total" value="">
                            </div>
                            <h2 class="text-lg text-gray-500 dark:text-gray-400">We offer:</h2>
                            <div class="flex items-center gap-2 mb-4 ">
                                <a href="#">
                                    <img src="https://i.postimg.cc/g22HQhX0/70599-visa-curved-icon.png" alt=""
                                        class="object-cover h-16 w-26">
                                </a>
                                <a href="#">
                                    <img src="https://i.postimg.cc/HW38JkkG/38602-mastercard-curved-icon.png" alt=""
                                        class="object-cover h-16 w-26">
                                </a>
                                <a href="#">
                                    <img src="https://i.postimg.cc/HL57j0V3/38605-paypal-straight-icon.png" alt=""
                                        class="object-cover h-16 w-26">
                                </a>
                            </div>
                            <div class="flex items-center justify-between ">
                                <button type="submit"
                                    class="block w-full py-4 font-bold text-center text-gray-100 uppercase bg-blue-500 rounded-md hover:bg-blue-600">Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>


@include('components.footer')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="{{asset('js/cart.js')}}"></script>




       