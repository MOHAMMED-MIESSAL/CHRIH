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
                    {{-- <h2 class="text-sm title-font text-gray-500 tracking-widest">BRAND NAME</h2> --}}
                    <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">{{ $produit->title }}</h1>
                    {{-- <div class="flex mb-4">
                        <span class="flex items-center">
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500"
                                viewBox="0 0 24 24">
                                <path
                                    d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                </path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500"
                                viewBox="0 0 24 24">
                                <path
                                    d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                </path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500"
                                viewBox="0 0 24 24">
                                <path
                                    d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                </path>
                            </svg>
                            <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-indigo-500"
                                viewBox="0 0 24 24">
                                <path
                                    d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                </path>
                            </svg>
                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                stroke-width="2" class="w-4 h-4 text-indigo-500" viewBox="0 0 24 24">
                                <path
                                    d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                </path>
                            </svg>
                            <span class="text-gray-600 ml-3">4 Reviews</span>
                        </span>
                        <span class="flex ml-3 pl-3 py-2 border-l-2 border-gray-200 space-x-2s">
                            <a class="text-gray-500">
                                <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                                </svg>
                            </a>
                            <a class="text-gray-500">
                                <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path
                                        d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z">
                                    </path>
                                </svg>
                            </a>
                            <a class="text-gray-500">
                                <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                    <path
                                        d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z">
                                    </path>
                                </svg>
                            </a>
                        </span>
                    </div> --}}
                    <p class="leading-relaxed">{{$produit->description}}.</p>
                    <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-100 mb-5">
                        <div class="flex" style="flex-wrap: wrap;">
                            <label for="number-input" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Quantité :</label>
                            <input type="number" name="qte" id="number-input" aria-describedby="helper-text-explanation" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Quantité" required />
                        </div>
                        {{-- <div class="flex ml-6 items-center">
                            <span class="mr-3">Size</span>
                            <div class="relative">
                                <select
                                    class="rounded border appearance-none border-gray-300 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-200 focus:border-indigo-500 text-base pl-3 pr-10">
                                    <option>SM</option>
                                    <option>M</option>
                                    <option>L</option>
                                    <option>XL</option>
                                </select>
                                <span
                                    class="absolute right-0 top-0 h-full w-10 text-center text-gray-600 pointer-events-none flex items-center justify-center">
                                    <svg fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4"
                                        viewBox="0 0 24 24">
                                        <path d="M6 9l6 6 6-6"></path>
                                    </svg>  
                                </span>
                            </div>
                        </div> --}}
                    </div>
                    <div class="flex">
                        <span class="title-font font-medium text-2xl text-gray-900">${{$produit->prix }}</span>
                        <button
                            class="flex ml-auto text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">Add to cart</button>
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

    <section class="py-24 bg-gray-100 font-poppins dark:bg-gray-700">
        <div class="px-4 py-6 mx-auto max-w-7xl lg:py-4 md:px-6">
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
                        <div class="flex flex-wrap items-center mb-6 -mx-4 md:mb-8">
                            <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                                <div class="flex flex-wrap items-center -mx-4">
                                    <div class="w-full px-4 mb-3 md:w-1/3">
                                        <div class="w-full h-96 md:h-24 md:w-24">
                                            <img src="https://i.postimg.cc/kGjz3dpD/pexels-cottonbro-3296434.jpg" alt=""
                                                class="object-cover w-full h-full">
                                        </div>
                                    </div>
                                    <div class="w-2/3 px-4">
                                        <h2 class="mb-2 text-xl font-bold dark:text-gray-400">DSL Camera</h2>
                                        <p class="text-gray-500 dark:text-gray-400 ">Picture frame</p>
                                    </div>
                                </div>
                            </div>
                            <div class="hidden px-4 lg:block lg:w-2/12">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">$100.00</p>
                                <span class="text-xs text-gray-500 line-through dark:text-gray-400">$1500</span>
                            </div>
                            <div class="w-auto px-4 md:w-1/6 lg:w-2/12 ">
                                <div
                                    class="inline-flex items-center px-4 font-semibold text-gray-500 border border-gray-200 rounded-md dark:border-gray-700 ">
                                    <button class="py-2 hover:text-gray-700 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="bi bi-dash" viewBox="0 0 16 16">
                                            <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z" />
                                        </svg>
                                    </button>
                                    <input type="number"
                                        class="w-12 px-2 py-4 text-center border-0 rounded-md dark:bg-gray-800 bg-gray-50 dark:text-gray-400 md:text-right"
                                        placeholder="1">
                                    <button class="py-2 hover:text-gray-700 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                            <path
                                                d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12 ">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">$99.00</p>
                            </div>
                        </div>
                        <div class="flex flex-wrap items-center mb-6 -mx-4 md:mb-8">
                            <div class="w-full px-4 mb-6 md:w-4/6 lg:w-6/12 md:mb-0">
                                <div class="flex flex-wrap items-center -mx-4">
                                    <div class="w-full px-4 mb-3 md:w-1/3">
                                        <div class="w-full h-96 md:h-24 md:w-24">
                                            <img src="https://i.postimg.cc/CLWkvq6f/pexels-markus-spiske-1002638.jpg"
                                                alt="" class="object-cover w-full h-full">
                                        </div>
                                    </div>
                                    <div class="w-2/3 px-4">
                                        <h2 class="mb-2 text-xl font-bold dark:text-gray-400">DSL Camera</h2>
                                        <p class="text-gray-500 dark:text-gray-400 ">Picture frame</p>
                                    </div>
                                </div>
                            </div>
                            <div class="hidden px-4 lg:block lg:w-2/12">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">$99.00</p>
                                <span class="text-xs text-gray-500 line-through dark:text-gray-400">$1500</span>
                            </div>
                            <div class="w-auto px-4 md:w-1/6 lg:w-2/12 ">
                                <div
                                    class="inline-flex items-center px-4 font-semibold text-gray-500 border border-gray-200 rounded-md dark:border-gray-700 ">
                                    <button class="py-2 hover:text-gray-700 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="bi bi-dash" viewBox="0 0 16 16">
                                            <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z" />
                                        </svg>
                                    </button>
                                    <input type="number"
                                        class="w-12 px-2 py-4 text-center border-0 rounded-md dark:bg-gray-800 bg-gray-50 dark:text-gray-400 md:text-right"
                                        placeholder="1">
                                    <button class="py-2 hover:text-gray-700 dark:text-gray-400">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                            fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                            <path
                                                d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="w-auto px-4 text-right md:w-1/6 lg:w-2/12 ">
                                <p class="text-lg font-bold text-blue-500 dark:text-gray-400">$99.00</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flex flex-wrap justify-between">
                    <div class="w-full px-4 mb-4 lg:w-1/2 ">
                        <div class="flex flex-wrap items-center gap-4">
                            <span class="text-gray-700 dark:text-gray-400">Apply Coupon</span>
                            <input type="text"
                                class="w-full px-8 py-4 font-normal placeholder-gray-400 border lg:flex-1 dark:border-gray-700 dark:placeholder-gray-500 dark:text-gray-400 dark:bg-gray-800"
                                placeholder="x304k45" required>
                            <button
                                class="inline-block w-full px-8 py-4 font-bold text-center text-gray-100 bg-blue-500 rounded-md lg:w-32 hover:bg-blue-600">Apply</button>
                        </div>
                    </div>
                    <div class="w-full px-4 mb-4 lg:w-1/2 ">
                        <div class="p-6 border border-blue-100 dark:bg-gray-900 dark:border-gray-900 bg-gray-50 md:p-8">
                            <h2 class="mb-8 text-3xl font-bold text-gray-700 dark:text-gray-400">Order Summary</h2>
                            <div
                                class="flex items-center justify-between pb-4 mb-4 border-b border-gray-300 dark:border-gray-700 ">
                                <span class="text-gray-700 dark:text-gray-400">Subtotal</span>
                                <span class="text-xl font-bold text-gray-700 dark:text-gray-400 ">$100</span>
                            </div>
                            <div class="flex items-center justify-between pb-4 mb-4 ">
                                <span class="text-gray-700 dark:text-gray-400 ">Shipping</span>
                                <span class="text-xl font-bold text-gray-700 dark:text-gray-400 ">Free</span>
                            </div>
                            <div class="flex items-center justify-between pb-4 mb-4 ">
                                <span class="text-gray-700 dark:text-gray-400">Order Total</span>
                                <span class="text-xl font-bold text-gray-700 dark:text-gray-400">$99.00</span>
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
                                <button
                                    class="block w-full py-4 font-bold text-center text-gray-100 uppercase bg-blue-500 rounded-md hover:bg-blue-600">Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    @include('components.footer')

</body>

</html>
