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
    <link rel="stylesheet" href="style/style.css">
</head>
<body>

<div class="list-group">
    <a href="index.jsp" type="button" class="list-group-item list-group-item-action active gradient2">
        Home
    </a>


</div>
<div class="container mt-5 mb-2">

<div class="row">
<%

    Notes notes=new Notes();
    SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();



    Session sess=sessionFactory.openSession();



    sess.beginTransaction();

    List<Notes>Allnotes = sess.createQuery("FROM Notes ").list();

    for(Notes n:Allnotes){
%>




    <div class="col-md-4 mb-3">

        <div class="card" style="  box-shadow: 1px 1px rgba(0,0,0,0.6);">
            <div class="card-header gradient">
          Notes
                <div class="icons text-right">



                    <a href="edit.jsp?id=<%=n.getNotesTitle()%>&id2=<%=n.getNotesDes()%>&id3=<%=n.getNotesId()%>">  <i class="fa-solid fa-pen-to-square text-white"></i></a>
                    <a href="delete?Id1=<%=n.getNotesId() %>" class=text-warning>  <i class="fa-solid fa-trash"></i></a>
<%--                   <input type="hidden"  name="spId" value=<%=n.getNotesId()%>>--%>




                </div>

            </div>
            <div class="card-body">
                <strong class="card-title">Title:</strong><br><span><%=n.getNotesTitle()%></span>
                <p class="card-text"> <h5>Description:</h5><%=n.getNotesDes()%></p>


<br><br>
                <small class="card-text" style="color:#6B646A;">Created : <%=n.getDate()%></small>
            </div>
        </div>




    </div>













<%}%>
</div>
</div>
</body>
</html>
