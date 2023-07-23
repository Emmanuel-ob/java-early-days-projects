<%--
    Document   : documentFile
    Created on : Sep 7, 2014, 1:00:18 AM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include  file="settings.jsp" %>

<%@page
import ="java.io.File"
import ="java.io.FileInputStream"
import ="java.io.IOException"
import ="java.io.InputStream"
import= "java.io.OutputStream"
import ="java.util.StringTokenizer"
import ="javax.servlet.ServletException"
import ="javax.servlet.ServletOutputStream"
import ="javax.servlet.http.HttpServlet"
import ="javax.servlet.http.HttpServletRequest"
import= "javax.servlet.http.HttpServletResponse"
 %>


    <%

String documentId = "yes";
      String userId = request.getParameter("userId");

    %>
    <p align="center"><%=userId%></p>
<%
      // StringTokenizer tok = new StringTokenizer(directory,"-");
       // companyName = tok.nextToken();
        //documentId = tok.nextToken();
         //System.out.println("imageid is " + documentId );

                      //if the directory does not exist/create it
                   File f = new File("/C:/passport");
                   // File f = new File("C:/Users/EMOCHE/Documents/jboss-4.2.2.GA/bin/document/"+companyName+"Folder");
                    //File f = new File("C:/jboss-4.2.2.GA/jboss-4.2.2.GA/bin/document/abachaFolder");
                   if(f.mkdir() == false){
                        f.mkdir();
                    }
         InputStream is = new FileInputStream(new File("/C:/passport/"+userId+".jpg"));

         //InputStream is = new FileInputStream(new File("C:/Users/EMOCHE/Documents/jboss-4.2.2.GA/bin/document/"+companyName+"Folder/"+documentId+"."+"jpg"));
         //InputStream is = new FileInputStream(new File("C:/jboss-4.2.2.GA/jboss-4.2.2.GA/bin/document/abachaFolder/abachaDocument1."+"jpg"));
           byte[] buf = new byte[1024];
            OutputStream o = response.getOutputStream();


        if(documentId != null) {

     try{
            System.out.println("1..?");
            //out.clearBuffer();
            //out.clear();
            //response.reset();
            System.out.println("11..?");
            response.flushBuffer();
            System.out.println("12..?");
            response.setContentType("image/jpg");
            System.out.println("13..?");
            ServletOutputStream outputStream = response.getOutputStream();
            System.out.println("2..?");
            if(response.isCommitted()){
                System.out.println("b/4 Write Out");
                 int nRead = 0;
                while( (nRead=is.read(buf)) != -1 ) {
                    o.write(buf, 0, nRead);
                }
                System.out.println("a/f Write Out");
                outputStream.flush();
            }
        }catch(IOException exx){
            System.out.println("IOException: " + exx.getMessage());
            //throw new IOException("IOException: " + exx.getMessage());
        }catch(IllegalStateException e){
            System.out.println("IllegalStateException: " + e.getMessage());
            //throw new java.lang.IllegalStateException("IllegalStateException: " + e.getMessage());
        }

        }

%>

<script>
    /**
    var abahadoyi = setInterval(function(){
var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET", "viewCapturing.jsp", true);
  xmlhttp.send();



       },1);



**/
</script>