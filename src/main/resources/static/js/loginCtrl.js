"use strict";

$(document).ready(function() {

        var lData = { id:"" , pwd:""}

        function getContextPath() {
        	var hostIndex = location.href.indexOf( location.host ) + location.host.length; 
        	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
        	};

        
        $(document).on("click","#login",function(){
        	
        	lData.id = $("input[name='id']").val();
        	lData.pwd = $("input[name='pwd']").val();
        	
        	var contextPath = getContextPath();
        	
        	
        	
            $.ajax({
            	type: "POST",
                url: contextPath+"/processLogin",
                data: {id:lData.id, pwd:lData.pwd},
                success : function(data) {
                	//console.log(data);
                },
                error : function(jqXHR, textStatus, errorThrown) {
                    alert("Error \n" + textStatus + " : " + errorThrown);
                    
                }
            });
        	
        	
        	
        });
        


        // //End

});

