function validation()
{
	
	var userid=document.reg.userid;
	var email=document.reg.email;
	
    var reg=/^[0-9A-Za-z]+$/;
   
    var reg2=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
	alert("Hey! i m java script function");
	
	   if(useridValidation(userid,reg))
		{
		       
		    	           if(emailValidation(email,reg2))
		    	        	   {
		    	        	     
		    	        	    	        alert("INSIDE PASSWORD TRUE");
		    	        	    	        return true;
		    	        	    	 }
		    	        	   
		    	        	   }
		    	   
		
return false;	
}

function useridValidation(username,reg)
{
      var myval=username.value;
      alert(myval);
	if(username.value.match(reg))
		{
		     alert("Username is correct");
		     return true;
		}
	else
		{
		    alert("Username is incorrect");
		    username.focus();
		    return false;
		  
		}
   }





function emailValidation(email,reg2)
{
	if(email.value.match(reg2))
	{
		alert("email address is correct");
	    return true;
	}
	else
	{
	   alert("email address is incorrect");
	   email.focus();
	   return false;	
	}
}

