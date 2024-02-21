$(document).ready(function(){
      

    $("#hero_field").keyup(function(){
        var input = $(this).val(); 
        if(input == "") input = 'all';
        $.ajax({
            url: "/search",
            method: "POST",
            data: {
                _token: '{{ csrf_token() }}', // Inclure le jeton CSRF 
                input: input
            },
            success: function(data){
                $("#search_list").html(data);
            }
        });
    });
});