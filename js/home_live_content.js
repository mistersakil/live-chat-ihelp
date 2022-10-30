
function Home_live2()
{
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("home_reload_data_container").innerHTML=xmlhttp.responseText;  
    }
  }
xmlhttp.open("GET","home_live_data.php",true);
xmlhttp.send();
}
	
	
function Home_Timing() {
    
    var time = 3
   
    var myTimer=setInterval( function() {
        
        time--;
        
        
        
        if (time === 0) {
            
            Home_live2();
			time = 3;
        }    
        
        
    }, 1000 );
    
}
		
function Home_live()
{
if(window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("home_reload_data_container").innerHTML=xmlhttp.responseText;  
	Home_Timing();
    }
  }
xmlhttp.open("GET","home_live_data.php",true);
xmlhttp.send();
}
	
window.onload = Home_live();
