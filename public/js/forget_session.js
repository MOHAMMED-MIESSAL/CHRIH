 
let btn = document.getElementById('forget_sesseion');
btn.addEventListener('click', function() {
    if(sessionStorage.getItem("coupon")){
    sessionStorage.removeItem("coupon");
    }
});
