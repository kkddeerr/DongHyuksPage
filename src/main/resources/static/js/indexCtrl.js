"use strict";

$(document).ready(function() {

        var email = { name:"", email:"", subject:"", message:"" }
        var mData = { firstName:"", subject:"", email:"", contents:""}
        var lData = { id:"" , pwd:""}
        

        $(window).on('load',function () {
            $(".loaded").fadeOut();
            $(".preloader").delay(1000).fadeOut("slow");
            $("#admin").click(function() {
				$('#myModal').modal("show");
			});
        });
        /*---------------------------------------------*
         * Mobile menu
         ---------------------------------------------*/
        $('.navbar-collapse, .home_btn').find('a[href*="#"]:not([href="#"])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                var target = $(this.hash); 
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: (target.offset().top - 40)
                    }, 1000);
                    if ($('.navbar-toggle').css('display') != 'none') {
                        $(this).parents('.container').find(".navbar-toggle").trigger("click");
                    }
                    return false;
                }
            }
        });

        // Portfoliowork init
        jQuery('#portfoliowork').mixItUp({
            selectors: {
                target: '.tile',
                filter: '.filter'
                //           sort: '.sort-btn'
            },
            animation: {
                animateResizeContainer: false,
                effects: 'fade scale'
            }

        });
        
        function getContextPath() {
        	var hostIndex = location.href.indexOf( location.host ) + location.host.length; 
        	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
        	};
        	
        	
        	

        $("#msend").click(function(){

            mData.firstName =  $("input[name='firstName']").val();
            mData.email =  $("input[name='email']").val();
            mData.contents =  $("textarea[name='contents']").val();
            mData.subject =  $("input[name='subject']").val();
    
    
            var contextPath = getContextPath();

            console.log(mData);
            
            $.ajax({
            	type: "POST",
                contentType: "application/json",
                url: contextPath+"/smtp",
                data: JSON.stringify(mData),
                dataType: 'text',
                success : function(data) {
                    alert("Send Success")
                },
                error : function(jqXHR, textStatus, errorThrown) {
                    alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
                }
            });
            
            
        });
        
        var magnificPopup = $.magnificPopup.instance;
        
        $('.popup-with-form').magnificPopup({
    		type: 'inline',
    		preloader: false,
    		focus: '#name',
    		showCloseBtn:false,

    		// When elemened is focused, some mobile browsers in some cases zoom in
    		// It looks not nice, so we disable it:
    		callbacks: {
    			beforeOpen: function() {
    				if($(window).width() < 700) {
    					this.st.focus = false;
    				} else {
    					this.st.focus = '#id';
    				}
    			},
    		}
    	});
        
        $(document).on("click","#login",function(){
        	
        	lData.id = $("input[name='id']").val();
        	lData.pwd = $("input[name='pwd']").val();
        	
        	var contextPath = getContextPath();
        	
        	
        	
            $.ajax({
            	type: "POST",
                url: contextPath+"/login",
                dataType: 'json',
                data: {id:lData.id, pwd:lData.pwd},
                success : function(data) {
                	console.log(data);
                    if(data.Message === "Success") {
                    	alert("로그인 되었습니다.");
                    	location.href = getContextPath() + "/admin";
                    } else {
                    	alert("로그인 실패");
                    }
                    
                   
                },
                error : function(jqXHR, textStatus, errorThrown) {
                    alert("Error \n" + textStatus + " : " + errorThrown);
                    
                }
            });
        	
        	
        	
        });
        
        $(document).on("click","#cancel",function(){
        	magnificPopup.close();
        });

        // //End

});

