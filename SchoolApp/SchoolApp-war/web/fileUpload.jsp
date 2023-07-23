<%-- 
    Document   : fileUpload
    Created on : Nov 13, 2016, 8:48:09 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@include  file="settings.jsp" %>

<%@page
 import = "sessionPackages.*"
 import= "java.io.File"
import ="java.io.IOException"
import= "java.io.PrintWriter"
import = "java.util.Iterator"
import= "java.util.List"
import ="java.util.StringTokenizer"
import= "java.util.logging.Level"
import = "java.util.logging.Logger"
import = "javax.ejb.CreateException"
import = "javax.naming.Context"
import ="javax.naming.InitialContext"
import ="javax.naming.NamingException"
import= "javax.servlet.ServletException"
import = "javax.servlet.http.HttpServlet"
import= " javax.servlet.http.HttpServletRequest"
import  = "javax.servlet.http.HttpServletResponse"
import = "javax.servlet.http.HttpSession"
import= "org.apache.commons.fileupload.FileItem"
import ="org.apache.commons.fileupload.FileItemFactory"
import ="org.apache.commons.fileupload.FileUploadException"
import ="org.apache.commons.fileupload.disk.DiskFileItemFactory"
 import ="org.apache.commons.fileupload.servlet.ServletFileUpload"
%>
<%



// fileSessionLocal filesl=null;

TreeMap tmap = null;
FileItem toBeSave = null;

String itemName;
           	//get the userid from the sesion
          //String username = session.getAttribute("username").toString();
String username ="abah";
tmap = new TreeMap();
// String studentId ="1";
  String studentId = session.getAttribute("studentId").toString();

  boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
    out.print("this is not multipart, sorry!");
 } else {
   FileItemFactory factory = new DiskFileItemFactory();
   ServletFileUpload upload = new ServletFileUpload(factory);
   List items = null;
   //get all the form fields here
   try {
        items = upload.parseRequest(request);//gets all the form fields
   } catch (FileUploadException e) {
        e.printStackTrace();
   }
   //iterate them here
   Iterator itr = items.iterator();
   while (itr.hasNext()){
       FileItem item = (FileItem) itr.next();
         if (item.isFormField()){
             //process other form fields here
              try {
                    if(!item.getString().equalsIgnoreCase("") && item.getString() != null) {
                        tmap.put(item.getFieldName(),item.getString());
                    }
                    else continue;
                }
                catch(Exception ex){System.out.println("Put: " +ex.getMessage());}

        } else{//it is a file
           toBeSave = item;
           //File f = new File("/C:/repositorio/"+studentId);
         File f = new File("/C:/passport");
     // File f = new File("C:/Users/EMOCHE/Documents/jboss-4.2.2.GA/bin/document/"+companyName+"Folder");

                   if(f.mkdir() == false){
                        f.mkdir();
                    }

                  File savedFile = new File("/C:/passport/" +studentId+"."+"jpg");
                     //File savedFile = new File("C:/Users/EMOCHE/Documents/jboss-4.2.2.GA/bin/document/"+companyName+"Folder/"+documentId+"."+"jpg");
                   item.write(savedFile);
                   response.sendRedirect("uploadImage.jsp");
                   System.out.println("is uptohere");



        }

}
        try{
         // companyId = (tmap.containsKey("companyid")) ? tmap.get("companyid").toString() : null;
          //documentName = (tmap.containsKey("documentname")) ? tmap.get("documentname").toString() : null;

          }catch(Exception my){}
     //session.setAttribute("item", toBeSave);
   //session.setAttribute("companyid", companyId);
   //session.setAttribute("documentname", documentName);

}

%>


