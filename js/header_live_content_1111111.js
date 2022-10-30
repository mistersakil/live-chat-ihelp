
function Header_live2()
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
    document.getElementById("header_live_data_container").innerHTML=xmlhttp.responseText;  
    }
  }
xmlhttp.open("GET","header_live_data.php",true);
xmlhttp.send();
}
	
	
function Live_Timing() {
    
    var time = 3
   
    var myTimer=setInterval( function() {
        
        time--;
        
        
        
        if (time === 0) {
            
            Header_live2();
			time = 3;
        }    
        
        
    }, 1000 );
    
}
		
function Header_live()
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
    document.getElementById("header_live_data_container").innerHTML=xmlhttp.responseText;  
	Live_Timing();
    }
  }
xmlhttp.open("GET","header_live_data.php",true);
xmlhttp.send();
}
	
window.onload = Header_live();
