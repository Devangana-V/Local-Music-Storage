<%-- 
    Document   : listFiles
    Created on : 19-Apr-2022, 7:54:43 PM
    Author     : Devangana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body
            {
                background-color:black ;
                text-align: center;
                color: white;
            }
            
            a{
                text-decoration: none;
                font-size: 25px;
                color: wheat;
                margin-top: 0px;
            }
            .about
            {
                height: 200px;
                background-color: #11CDD4;
                padding: 10%;
            }
a:hover
{
    color:snow;
    font-size: 26px;
   
}


.MusicList
{
    margin:0px;
    padding: 2%;
    background-color: #11CDD4;
}
/*.Hlink
{
    text-align: left; 
    font-weight:bolder; 
    margin-top: 0px;
    width: 100%;
    height:5%;
    
}
.linkh
{
    color: white;
    font-size: 20px;
    
}*/

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
 
 .uploadAD
 {
     padding: 2%;
     
 }
.UnAdd
{
    padding: 6%;
    padding-bottom: 15%;
    
}
.CreateP
{
    background-color: white;
    height: 30px;
}

.UpSong
{
    height: 400px;
   
    padding: 10%;
}


.newBtn
{
    padding: 9px;
     color: #FFFFFF;
    font-family: Arial;
    background-color: grey;
    
}





nav{
  background: #11CDD4;
  height: 80px;
  width: 100%;
  margin : 0px;
}
label.logo{
  color: white;
  font-size: 35px;
  line-height: 80px;
  padding: 0 100px;
  font-weight: bold;
}
nav ul{
  float: right;
  margin-right: 20px;
}
nav ul li{
  display: inline-block;
  line-height: 80px;
  margin: 0 5px;
}
nav ul li a{
  color: white;
  font-size: 17px;
  padding: 7px 13px;
  border-radius: 3px;
  text-transform: uppercase;
}
a.active,a:hover{
  background: aqua;
  transition: .5s;
}
.checkbtn{
  font-size: 30px;
  color: white;
  float: right;
  line-height: 80px;
  margin-right: 40px;
  cursor: pointer;
  display: none;
}
#check{
  display: none;
}
@media (max-width: 952px){
  label.logo{
    font-size: 30px;
    padding-left: 50px;
  }
  nav ul li a{
    font-size: 16px;
  }
}
@media (max-width: 858px){
  .checkbtn{
    display: block;
  }
  ul{
    position: fixed;
    width: 100%;
    height: 100vh;
    background: #2c3e50;
    top: 80px;
    left: -100%;
    text-align: center;
    transition: all .5s;
  }
  nav ul li{
    display: block;
    margin: 50px 0;
    line-height: 30px;
  }
  nav ul li a{
    font-size: 20px;
  }
  a:hover,a.active{
    background: none;
    color: white;
  }
  
  
            </style>
    </head>
    <body>
        
               <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="logo">Music Storage System</label>
      <ul>
        <li><a class="active" href="<%= request.getContextPath() %>/FileController">Home</a></li>
        <li><a href="#abt">About</a></li>
        <li><a href="#viewp">View</a></li>
        <li><a href="#create">Create</a></li>
        <li><a href="#uplos">Upload</a></li>
        <li><a href="#downs">Download</a></li>
      </ul>
    </nav>

<!--        <div class="Hlink">
     
        <a class="linkh" href="<%= request.getContextPath() %>/FileController">Home</a>
        
        </div>
        -->
        
        <%
            String path=(String) request.getAttribute("path");
             ArrayList<String> folders=(ArrayList<String>)request.getAttribute("folders");
             ArrayList<String> files= (ArrayList<String>)request.getAttribute("files");
             
        %>
        
       
        <h3>Current Folder Location - <%= path %></h3>
        <section id="viewp">
        
        <div class="UnAdd">
   
      
         <h1>List of Playlist</h1>
        <c:forEach items="${folders}" var="folder">
            
              <div class="uploadAD">    
            <form action="<%=request.getContextPath()%>/FileController" method="get">
                <input  type="hidden" name="path" value="${path}/${folder}"/>
                
                <input class="btn" type="submit" value="${folder}"/>
                <br><!-- comment -->
                
                <br>
            
            </form>
            
            
             <c:url value="/FolderController" var ="deleteurl">
                  <c:param name="path" value="${path}"> </c:param>
                  <c:param name="action" value="delete"></c:param>
                       <c:param name="folder" value="${folder}"></c:param>
                  
              </c:url>
              
              <a class="btn" href="${deleteurl}">Delete Playlist</a>
              
        </c:forEach>
    </div>
         </section>
        
        
        <section id="create">
         <div class="cps">
         <h1>Create Playlist </h1>
        
              <form action ="<%=request.getContextPath()%>/FolderController" method="get">
                  <input type="hidden" name="path" value="${path}"/>
                  <input type="hidden" name="action" value="create"/>
                  <input type="text" class="CreateP" name="folder" placeholder="Enter your Playlist name"/>
                  <input type="submit" class="btn" value="Create Playlist"/>
              </form>
                  
         </div>
       
                           
        </section> 
                  
                  <br><!-- comment -->
                  <br><!-- comment -->
                  <br><!-- comment -->
                  <br><!-- comment -->
        <!--to see the files-->
        
        <section id="downs">
        <div class="MusicList">
        <h1>List of Songs</h1> 
          <c:forEach items="${files}" var="file">
              
              <c:url value="/DownloadController" var ="downloadurl">
                  <c:param name="path" value="${path}"> </c:param>
                  <c:param name="file" value="${file}"></c:param>
                      
                  
              </c:url>
              
              <a href="${downloadurl}">${file}</a>
              <br>
           
          </c:forEach>
              
              </div>
            
        </section>
              <br>
              <br><!-- comment -->
              
              <section id="uplos">
              <div class="UpSong">
              <c:url value="/UploadController" var="uploadurl">
                  <c:param name="path" value="${path}"></c:param>
                  
              </c:url>
                  
                  <h1>Upload your music files here</h1>
              <form action="${uploadurl}" method="post" enctype="multipart/form-data">
                  <input class="newBtn" type="file" name="files" multiple/><!-- comment -->
                  <br>
                  <br><!-- comment -->
                  <br>
                  <input type ="submit" class="btn" value="Upload Songs"/>
                      
              </form>
                  </div>
              </section>
                  <section id="abt">
                  <div class="about">
                      <h1>About</h1>
                      
                      <h3>This website is a clone of cloud based storage system.
                                  Here we are creating a local cloud storage system where we can 
                                  store all our music files, create playlist , delete playlist , download and upload music files.
                                  The location of the stored file is also displayed in this website and the file can be accessed in multiple devices .
                                  This website is created using JSP and is run using appache tomcat server. The languages used in creating this website include 
                                  HTML , CSS and java.
</h3>                   
                  </div>
                  </section>
    </body>
</html>     
                                                                                                             
                                                                         