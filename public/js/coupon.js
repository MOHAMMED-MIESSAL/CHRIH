
document.getElementById('btn_coupon').addEventListener('click',()=>{
    let coupon=document.getElementById('coupon').value;
    
    if(coupon!=""){
        $.ajax({
            url: "/coupon/"+coupon,
            method: "GET",
            // data: {coupon: coupon},
            success: function(data){
                if(!data) document.getElementById('msg_coupon').textContent='Coupon incorrect';
                else {
                    document.getElementById('msg_coupon').textContent='';
                    
                }
            },
            
        }); 
    }
});