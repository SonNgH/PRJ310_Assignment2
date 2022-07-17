<%-- 
    Document   : Checked
    Created on : Jul 17, 2022, 9:40:44 PM
    Author     : hongs
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Check Attend</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>

    <body>
        <c:set var = "i" scope = "page" value = "0"/>
        <div class="container">
            <h1>Taking Attendance</h1>
            <div class="row">
                <form action="Update" method="post">
                    <input name="sid" value="${param['sid']}" type="hidden">
                    <input name="instructorid" value="${s.getGroup().getInstructor().getId()}" type="hidden">
                    <input name="gcode" value="${s.getGroup().getCode()}" type="hidden">
                    <table class="table">
                        <thead>
                            <tr>
                                <th >No</th>
                                <th >Group</th>
                                <th>Code</th>
                                <th >Name</th>
                                <th >Image</th>
                                <th >Status</th>
                                <th >Commnent</th>
                                <th >Taker</th>
                                <th >RecordTime</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ck" items="${alist}">
                                <tr>
                                    <td >${ck.getStudent().getId()}</td>
                                    <td >${s.getGroup().getCode()}</td>
                                    <td >${ck.getStudent().getCode()}</td>
                                    <td >${ck.getStudent().getName()}</td>
                                    <td ><img src="${ck.getStudent().getImg()}" width="100px"></td>
                                    <td style="width:15%"><input type="radio"  value="1" ${ck.isCheck()?"checked":""} name="${ck.getStudent().getCode()}"> Attend <input type="radio" ${!ck.isCheck()?"checked":""} value="0" name="${ck.getStudent().getCode()}"> Absent</d>
                                    <td ></td>
                                    <td >${s.getGroup().getInstructor().getUserName()}</td>    
                                    <td >${ck.getRecordtime()}</td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <input  type="submit" value="Submit">

                </form>

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