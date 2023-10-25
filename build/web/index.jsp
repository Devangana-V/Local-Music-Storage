<%-- 
    Document   : newjsp
    Created on : 14-Apr-2022, 3:38:26 PM
    Author     : Devangana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
    
            body{
              
                    margin: 0;
    text-align: center;
    /*font-family: Georgia, 'Times New Roman', Times, serif;*/
    font-family: 'Merriweather', serif;

            }
h1
{
    margin-top: 0px;
}

.home
{
    margin-top: 0px;
    padding: 100px;
    height: 200px;
    width: 100%;
    margin: 0px;
    color: aqua;
    background-color: black;
    
}
.mus
        {
            position: absolute;
            top:100px;
           left: 300px;
           border-radius: 100%;

        }

a{
    color: aqua;
    font-size: 20px;
    text-shadow: beige;
    text-decoration: none;
}
a:hover
{
    color:lightskyblue;
    font-size: 22px;
   
}
.contact-me
{
        padding-top: 1.5%;
}
.btn{
    background: #11CDD4;
    background-image: -webkit-linear-gradient(top, #11CDD4, #11999E);
    background-image: -moz-linear-gradient(top, #11CDD4, #11999E);
    background-image: -ms-linear-gradient(top, #11CDD4, #11999E);
    background-image: -o-linear-gradient(top, #11CDD4, #11999E);
    background-image: -webkit-gradient(to bottom, #11CDD4, #11999E);
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
    color: #FFFFFF;
    font-family: Arial;
    font-size: 18px;
    font-weight: 100;
    padding: 9px;
    -webkit-box-shadow: 1px 1px 20px 0 #000000;
    -moz-box-shadow: 1px 1px 20px 0 #000000;
    box-shadow: 1px 1px 20px 0 #000000;
    text-shadow: 1px 1px 20px #000000;
    border: solid #337FED 0;
    text-decoration: none;
    display: inline-block;
    cursor: pointer;
    text-align: center;

}
.btn:hover {
    border: solid #2BC4AD 1px;
    background: #30E3CB;
    background-image: -webkit-linear-gradient(top, #30E3CB, #2BC4AD);
    background-image: -moz-linear-gradient(top, #30E3CB, #2BC4AD);
    background-image: -ms-linear-gradient(top, #30E3CB, #2BC4AD);
    background-image: -o-linear-gradient(top, #30E3CB, #2BC4AD);
    background-image: -webkit-gradient(to bottom, #30E3CB, #2BC4AD);
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    border-radius: 20px;
    text-decoration: none;
 }

            </style>
            
            
    </head>
    <body>
        <div class="home">
        <h1>Music Storage System</h1>
        <img class="mus" src="data:image/png;base64,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" alt=""> 
       
       <a href="<%= request.getContextPath()%>/FileController">Start browsing your Music Playlist</a>
       
       
        </div>
          <div class="contact-me">
    <h2>Get In Touch</h2>
    <a class="btn" href="mailto:devangana.viswanath@gmail.com">CONTACT ME</a>
  </div>

           <div class="bottom-container">

      <p class="cap">© 2022 Devangana V</p>
    </div>

       
        
        </body>
    
    
 

</html> 
