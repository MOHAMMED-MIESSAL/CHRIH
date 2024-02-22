

 <!--Nav-->
  <nav id="header" class="w-full z-30 top-0 py-1">
    <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-6 py-3">

        <label for="menu-toggle" class="cursor-pointer md:hidden block">
            <svg class="fill-current text-gray-900" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                viewBox="0 0 20 20">
                <title>menu</title>
                <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path>
            </svg>
        </label>
        <input class="hidden" type="checkbox" id="menu-toggle" />

        <div class="hidden md:flex md:items-center md:w-auto w-full order-3 md:order-1" id="menu">
            <nav>
                <ul class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0">
                    <li><a class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
                            href="#"></a></li>
                    <li><a class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
                            href="#"></a></li>
                </ul>
            </nav>
        </div>

        <div class="order-1 md:order-2">
            <a class="flex items-center tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl "
                href="{{route('home')}}">
                <svg class="fill-current text-gray-800 mr-2" xmlns="http://www.w3.org/2000/svg" width="24"
                    height="24" viewBox="0 0 24 24">
                    <path
                        d="M5,22h14c1.103,0,2-0.897,2-2V9c0-0.553-0.447-1-1-1h-3V7c0-2.757-2.243-5-5-5S7,4.243,7,7v1H4C3.447,8,3,8.447,3,9v11 C3,21.103,3.897,22,5,22z M9,7c0-1.654,1.346-3,3-3s3,1.346,3,3v1H9V7z M5,10h2v2h2v-2h6v2h2v-2h2l0.002,10H5V10z" />
                </svg>
                CHRIH
            </a>
        </div>

        <div class="order-2 md:order-3 flex items-center" id="nav-content">
            @auth
            <a href="{{route('profile')}}"class="mx-3">{{auth()->user()->name}}</a>
                  
              
              <a href="{{route('wishlist')}}">     
                <svg class="h-6 w-6 fill-current  text-gray-500 hover:text-black"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                <path
                    d="M12,4.595c-1.104-1.006-2.512-1.558-3.996-1.558c-1.578,0-3.072,0.623-4.213,1.758c-2.353,2.363-2.352,6.059,0.002,8.412 l7.332,7.332c0.17,0.299,0.498,0.492,0.875,0.492c0.322,0,0.609-0.163,0.792-0.409l7.415-7.415 c2.354-2.354,2.354-6.049-0.002-8.416c-1.137-1.131-2.631-1.754-4.209-1.754C14.513,3.037,13.104,3.589,12,4.595z M18.791,6.205 c1.563,1.571,1.564,4.025,0.002,5.588L12,18.586l-6.793-6.793C3.645,10.23,3.646,7.776,5.205,6.209 c0.76-0.756,1.754-1.172,2.799-1.172s2.035,0.416,2.789,1.17l0.5,0.5c0.391,0.391,1.023,0.391,1.414,0l0.5-0.5 C14.719,4.698,17.281,4.702,18.791,6.205z" />
            </svg>
        </a>
        {{-- @if ($wishlist->contains('produit_id', $produit->id)) --}}
        <div id="wishlist-notification" class="ml-1 inline-block bg-red-500 text-white rounded-full px-2 py-1 text-xs">{{count($wishlist)}}</div>
        {{-- @endif --}}
        @endauth

            
           

            <a class="pl-3 inline-block no-underline hover:text-black" @auth href="{{route('cart')}}" @endauth @guest href="/admin" @endguest >
                <svg class="fill-current hover:text-black" xmlns="http://www.w3.org/2000/svg" width="24"
                    height="24" viewBox="0 0 24 24">
                    <path
                        d="M21,7H7.462L5.91,3.586C5.748,3.229,5.392,3,5,3H2v2h2.356L9.09,15.414C9.252,15.771,9.608,16,10,16h8 c0.4,0,0.762-0.238,0.919-0.606l3-7c0.133-0.309,0.101-0.663-0.084-0.944C21.649,7.169,21.336,7,21,7z M17.341,14h-6.697L8.371,9 h11.112L17.341,14z" />
                    <circle cx="10.5" cy="18.5" r="1.5" />
                    <circle cx="17.5" cy="18.5" r="1.5" />
                </svg>
            </a>
            {{-- <div id="wishlist-notification" class="ml-1 inline-block bg-red-500 text-white rounded-full px-2 py-1 text-xs">{{count($produits)}}</div> --}}

            @guest
            <a href="{{route('regiter_form')}}" class="mx-3">register</a>
            <a href="{{url('/admin')}}">login</a>
            @endguest
        
            @auth

           
            <button id="forget_sesseion" > <a href="{{route('logout')}}"class="mx-3">logout</a></button>

            @endauth

        </div>
    </div>
</nav>
<script src="{{asset('js/forget_session.js')}}"></script>