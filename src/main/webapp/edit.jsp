<%@ page import="java.util.Date" %>
<%@ page import="com.example.notes.Notes" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="javax.management.Query" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP-PROBOOK
  Date: 11/28/22
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>View Notes</title>
  <jsp:include page="style/boostrap.jsp" />
</head>
<body>

<%



  String title=request.getParameter("id");
  String Desc=request.getParameter("id2");
  String id=request.getParameter("id3");


%>
<div class="container mt-5 d-flex justify-content-center">


  <div class="card" style="width: 50rem;">
    <div class="card-body">


      <form action="edit" method="post">
        <div class="form-group">
          <label for="exampleFormControlInput1">Note Title</label>
          <input type="text" class="form-control" id="exampleFormControlInput1" name="title" value="<%=title%>" >



        </div>






        <div class="form-group">
          <label for="exampleFormControlTextarea1">Note Description</label>

          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="des" style="resize: none" ><%=Desc %></textarea>


        </div>


        <input type="hidden" name="spId" value=<%=id%>>

        <input type="submit" class="w-100 btn btn-info" value="update">
      </form>





    </div>
  </div>







</div>
</body>
</html>
