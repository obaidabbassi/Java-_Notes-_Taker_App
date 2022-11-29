<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Notes</title>



    <jsp:include page="style/boostrap.jsp" />

    <link rel="stylesheet" href="style/style.css">

</head>
<body>

<div class="container mt-5 ">


    <div class="card" style="width: 60rem;">

        <div class="card-body">



            <h1 class="text-center">Welcome to Your Notes!</h1>
            <div class="row">

                <div class="col-md-4 mt-5 col-12">

                    <div class="list-group">
                        <button type="button" class="list-group-item list-group-item-action active gradient">
                            Notes
                        </button>
                        <a href="view_notes.jsp" type="button" class="list-group-item list-group-item-action">View Notes</a>

                    </div>


                </div>

                <div class="col-md-6 mt-5 col-12">

                    <form action="Mynotes" method="post">
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Note Title</label>
                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Title" name="title">
                        </div>






                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Note Description</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" style="resize: none" placeholder="Description" name="des"></textarea>
                        </div>
                        <input type="submit" class="w-100 btn btn-success">



                    </form>


                    <jsp:include page="Message.jsp"/>

                </div>


            </div>





        </div>
    </div>






</div>


</body>
</html>