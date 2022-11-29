<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>message</title>
</head>
<body>


<%


    String msg=(String) session.getAttribute("Message");



    if (msg!=null){%>


<div class="alert alert-success mt-5" role="alert">
    <h4 class="alert-heading">Success!</h4>
    <p><%=msg%></p>


</div>






<%

session.removeAttribute("Message");



}




%>





</body>
</html>