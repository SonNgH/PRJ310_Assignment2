<%-- 
    Document   : Table
    Created on : Jul 17, 2022, 10:29:38 PM
    Author     : hongs
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Time Table</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <header>
            <h1>Campus: FU-HL Instructor: ${sessionScope['user'].getUserName()}</h1>
        </header>
        <div class="container">
            <div class="row">
                <h2 class="col-md-10 bg-primary" style="text-align: center" >Time Table</h2>

                <c:forEach var="s1" items="${list}">
                    <div class="col-md-5" style="margin: 10px;"><a href="TakingAttendance?sid=${s1.getId()}&status=${s1.isStatus()}&gcode=${s1.getGroup().getCode()}" > Group: ${s1.getGroup().getCode()} Date: ${s1.getDate()}<br>Room: ${s1.getRoom().getCode()}<b style="${s1.isStatus()?"color: green;":"color: red;"}">${s1.isStatus()?"(attend)":"(Not yet)"}</b></a></div>
                        </c:forEach>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </body>

</html>