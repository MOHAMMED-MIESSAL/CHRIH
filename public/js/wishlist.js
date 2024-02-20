$('.Add_toWishlist').click(function (e) {

     var prod_id = $(this).closest('.product_data').find('.prod_id').val();


        $.ajax({

            method:"POST",
            URL:"/add_wishlist",
            data:{
                'prod_id': prod_id,
            },
            success: function (response){
                swal(response.status)

            }
        })

})