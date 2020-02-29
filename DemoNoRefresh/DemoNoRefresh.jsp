<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <tr><td>name:</td><td><input id='name' type="text" name="name"></td></tr>
        <tr><td>checkcode:</td><td><input id='checkcode' type="text" name="checkcode"></td></tr>
        <tr><td></td><td><input id='submit' type="button" onclick="check();" value="submit"></td></tr>
        
    </table>
</body>
<script type="text/javascript">
    var xmlhttp;
    
    function loadXMLDoc(url)
    {
        xmlhttp=null;
        
        if (window.XMLHttpRequest)
        {   // code for all new browsers
            xmlhttp=new XMLHttpRequest();
        }
        else if (window.ActiveXObject)
        {   // code for IE5 and IE6
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }

        if (xmlhttp!=null)
        {
            var url=""+$("name").value;
            // xmlhttp.onreadystatechange=state_Change;
            xmlhttp.open("GET",url,true);
            // xmlhttp.send(null);
            return xmlhttp;
        }
        else
        {
            alert("Your browser does not support XMLHTTP.");
        }
    }

    function check()
    {
        var myXmlHttp=loadXMLDoc;
        if (myXmlHttp)
        {// 4 = "loaded"
            if (myXmlHttp)
            {   // 200 = OK
                // ...our code here...
                // alert("ajax ready");
                
            }
            else
            {
                alert("Problem retrieving XML data");
            }
        }
    }

    function $(id){
        return document.getElementById(id);
    }
</script>
</html>