
if(sessionStorage.getItem("coupon")){
    document.getElementById('msg_coupon').textContent='Coupon Validated';
    document.getElementById('msg_coupon').style.color='green';
}


document.getElementById('btn_coupon').addEventListener('click',()=>{
    let coupon=document.getElementById('coupon').value;
    
    if(coupon!="" && !sessionStorage.getItem("coupon")){
        $.ajax({
            url: "/coupon/"+coupon,
            method: "GET",
            // data: {coupon: coupon},
            success: function(data){
                if(!data){
                    document.getElementById('msg_coupon').textContent='Coupon incorrect';
                    document.getElementById('msg_coupon').style.color='red';
                } 
                else {
                    document.getElementById('msg_coupon').textContent='Coupon Correct';
                    document.getElementById('msg_coupon').style.color='green';
                    sessionStorage.setItem("coupon", data);
                }
            },
            
        }); 
    }
});


let count_qte=document.getElementsByClassName('quantites').length;
let prices=document.getElementsByClassName('prices');
let subtotals=document.getElementsByClassName('subtotal');

let summary_subtotal=document.getElementById('summary_subtotal');
let summary_coupon=document.getElementById('summary_coupon');
let summary_total=document.getElementById('summary_total');


function Calculate_summary(){
    let price_subtotal=0;
    for (let index = 0; index < subtotals.length; index++) {
        price_subtotal+= parseFloat(subtotals[index].getAttribute('subtotal'));
    }
    summary_subtotal.textContent="$"+price_subtotal;
    let percentage_coupon=sessionStorage.getItem("coupon");
    let price_coupon=(price_subtotal*percentage_coupon)/100;
    summary_coupon.textContent="("+percentage_coupon+"%)  -$"+ price_coupon;
    summary_total.textContent="$"+ (price_subtotal-price_coupon);
    document.getElementById('mollie_order_total').value=price_subtotal-price_coupon;

}

Calculate_summary();

// Click qte
for (let index = 0; index < count_qte; index++) {
    document.getElementsByClassName('quantites')[index].addEventListener('click',()=>{
        let qte=document.getElementsByClassName('quantites')[index].value;
        let price = prices[index].getAttribute('price');
        subtotals[index].textContent="$"+qte*price;
        subtotals[index].setAttribute('subtotal',qte*price);
        Calculate_summary();

    });
    
}

