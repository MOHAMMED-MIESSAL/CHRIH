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


    <div class="h-screen bg-gray-300">
        <div class="py-12">
            
        
        <div class="max-w-md mx-auto bg-gray-100 shadow-lg rounded-lg  md:max-w-5xl">
            <div class="md:flex ">
                <div class="w-full p-4 px-5 py-5">
    
                    <div class="md:grid md:grid-cols-3 gap-2 ">
    
                        <div class="col-span-2 p-5">
    
                            <h1 class="text-xl font-medium ">Shopping Cart</h1>
    
                            <div class="flex justify-between items-center mt-6 pt-6">
                                <div class="flex  items-center">
                                    <img src="https://i.imgur.com/EEguU02.jpg" width="60" class="rounded-full ">
    
                                    <div class="flex flex-col ml-3">
                                        <span class="md:text-md font-medium">Chicken momo</span>
                                        <span class="text-xs font-light text-gray-400">#41551</span>
                                        
                                    </div>
    
                                    
                                </div>
    
                                <div class="flex justify-center items-center">
                                    
                                    <div class="pr-8 flex ">
                                        <span class="font-semibold">-</span>
                                        <input type="text" class="focus:outline-none bg-gray-100 border h-6 w-8 rounded text-sm px-2 mx-2" value="1">
                                        <span class="font-semibold">+</span>
                                    </div>
    
                                    <div class="pr-8 ">
                                        
                                        <span class="text-xs font-medium">$10.50</span>
                                    </div>
                                    <div>
                                        <i class="fa fa-close text-xs font-medium"></i>
                                    </div>
    
                                </div>
                                
                            </div>
    
    
    
    
    
    
    
    
    
                            <div class="flex justify-between items-center pt-6 mt-6 border-t">
                                <div class="flex  items-center">
                                    <img src="https://i.imgur.com/Uv2Yqzo.jpg" width="60" class="rounded-full ">
    
                                    <div class="flex flex-col ml-3 ">
                                        <span class="text-md font-medium w-auto">Spicy Mexican potatoes</span>
                                        <span class="text-xs font-light text-gray-400">#66999</span>
                                        
                                    </div>
    
                                    
                                </div>
    
                                <div class="flex justify-center items-center">
                                    
                                    <div class="pr-8 flex">
                                        <span class="font-semibold">-</span>
                                        <input type="text" class="focus:outline-none bg-gray-100 border h-6 w-8 rounded text-sm px-2 mx-2" value="1">
                                        <span class="font-semibold">+</span>
                                    </div>
    
                                    <div class="pr-8">
                                        
                                        <span class="text-xs font-medium">$10.50</span>
                                    </div>
                                    <div>
                                        <i class="fa fa-close text-xs font-medium"></i>
                                    </div>
    
                                </div>
                                
                            </div>
    
    
    
    
    
    
    
    
    
    
    
                            <div class="flex justify-between items-center mt-6 pt-6 border-t">
                                <div class="flex  items-center">
                                    <img src="https://i.imgur.com/xbTAITF.jpg" width="60" class="rounded-full ">
    
                                    <div class="flex flex-col ml-3 ">
                                        <span class="text-md font-medium">Breakfast</span>
                                        <span class="text-xs font-light text-gray-400">#86577</span>
                                        
                                    </div>
    
                                    
                                </div>
    
                                <div class="flex justify-center items-center">
                                    
                                    <div class="pr-8 flex">
                                        <span class="font-semibold">-</span>
                                        <input type="text" class="focus:outline-none bg-gray-100 border h-6 w-8 rounded text-sm px-2 mx-2" value="1">
                                        <span class="font-semibold">+</span>
                                    </div>
    
                                    <div class="pr-8">
                                        
                                        <span class="text-xs font-medium">$10.50</span>
                                    </div>
                                    <div>
                                        <i class="fa fa-close text-xs font-medium"></i>
                                    </div>
    
                                </div>
                                
                            </div>
    
    
    
                            <div class="flex justify-between items-center mt-6 pt-6 border-t"> 
                                <div class="flex items-center">
                                    <i class="fa fa-arrow-left text-sm pr-2"></i>
                                    <span class="text-md  font-medium text-blue-500">Continue Shopping</span>
                                </div>
    
                                <div class="flex justify-center items-end">
                                    <span class="text-sm font-medium text-gray-400 mr-1">Subtotal:</span>
                                    <span class="text-lg font-bold text-gray-800 "> $24.90</span>
                                    
                                </div>
                                
                            </div>
    
    
    
    
    
    
    
    
                            
                        </div>
                        <div class=" p-5 bg-gray-800 rounded overflow-visible">
 
    
                            <div class="flex justify-center flex-col pt-3">
                                <label class="text-xs text-gray-400 ">code promo</label>
                                <input type="text" class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4" placeholder="******">
                            </div>
    
     
    
    
    
    
                            <div class="grid grid-cols-3 gap-2 pt-2 mb-3">
    
     
                                   
    
    
                                    
       
                                
                            </div>
    
    
    
    <form action="{{route('mollie')}}" method="POST">
        @csrf
    
                            <button class="h-12 w-full bg-red-500 rounded focus:outline-none text-white hover:bg-blue-600">Check Out</button>
    </form>
    
    
    
    
    
    
    
    
    
                            
                        </div>
    
                        
                    </div>
                    
                   
               </div>
            </div>
        </div>
        </div>
    </div>