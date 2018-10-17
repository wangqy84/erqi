var paraconfig = {
    maxrentdays:60,
    maxdays:60
};
var isload =false;
function checkinitpage()
{
   try
   {
    if(hexieconfig.hosturl=="192.168.0.101:9098")
    {
       //alert(hexieconfig.hosturl);
 	   if(isload==false)
	   {
		   if(window.location.href.indexOf("selfilter.html")>=0)
		   {
		     if(window.location.href.indexOf("selfilter.html?n=1")<0)
		     {
			  //alert(hexieconfig.hosturl);
			  //isload =true;
			  //window.location.href="http://192.168.0.101/sitephone/selfilter.html?n=1"
			  }
		   }
	   }
    }
   }
   catch(e)
   {
     
   }
}
checkinitpage();