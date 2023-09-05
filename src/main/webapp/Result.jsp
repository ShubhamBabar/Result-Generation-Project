<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report page</title>
</head>
<body>
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/students"  user="root" password="Shubham@123" var="ds"></sql:setDataSource>

<sql:query dataSource="${ds}" var="rs">select * from sem1_result where uname="<%=session.getAttribute("name") %>"</sql:query>

<sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/students"  user="root" password="Shubham@123" var="ds2"></sql:setDataSource>

<sql:query dataSource="${ds2}" var="rs2">select * from std_info where uname="<%=session.getAttribute("name") %>"</sql:query>

 
<div class="container">
<h1>Student Report</h1>
<p>Semester 1</p>
<form action="ResultPage.java" method="get">
<table border ="2px">
<c:forEach items="${rs.rows}" var="row">
    <tr>  
        <td colspan="5"><strong>Roll No :</strong> 3322</td>
        <td colspan="5"><strong>Status :</strong> Pass</td>
    </tr>

    <tr>
       <td colspan="5"> <strong>Course :</strong><c:forEach items="${rs2.rows}" var="row1"> <c:out value="${row1.branch}"></c:out></c:forEach></td>
       <td colspan="5"> <strong>PRN no :</strong> <c:forEach items="${rs2.rows}" var="row1"> <c:out value="${row1.prn_no}"></c:out></c:forEach></td>
    </tr>
    
    <tr>
        <td colspan="10"><strong>Name :</strong>  <%=session.getAttribute("name") %></td>
    </tr>

    <tr>
        <td colspan="10"><strong>Father Name :</strong><c:forEach items="${rs2.rows}" var="row1"> <c:out value="${row1.Father_name}"></c:out></c:forEach></td>
    </tr>
     <tr style="background-color: lightgreen;">
        <th rowspan="2" >SR no</th>
        <th rowspan="2">Subjects</th>
        <th rowspan="2">Total marks</th>
        <th colspan="4">Obtained marks
        </th>
        <th rowspan="2">Percentile</th>
        <th rowspan="2">Grade Point</th>
        <th rowspan="2">Remark</th>
    </tr>
    <tr >
        <th colspan="1">CA1</th>
        <th colspan="1">CA2</th>
        <th colspan="1">Mid</th>
        <th colspan="1">ETE</th>
    </tr>
    <tr>
        <td>01</td>
        <td><c:out value="${row.sub1}"></c:out></td>
        <td>100</td>
        <td><c:out value="${row.sub1_CA1}"></c:out></td>
        <td><c:out value="${row.sub1_CA2}"></c:out></td>
        <td><c:out value="${row.sub1_Mid}"></c:out></td>
        <td><c:out value="${row.sub1_ETE}"></c:out></td>
        <td><c:out value="${row.sub1_CA1+row.sub1_CA2+row.sub1_Mid+row.sub1_ETE}"></c:out></td>
        <td>9</td>
        <td><c:choose>
        <c:when test="${row.sub1_CA1+row.sub1_CA2+row.sub1_Mid+row.sub1_ETE >= 40}">Pass</c:when>
        <c:when test="${row.sub1_CA1+row.sub1_CA2+row.sub1_Mid+row.sub1_ETE < 40}">Fail</c:when>
        </c:choose></td>  
    </tr> 
    <tr>
        <td>02</td>
        <td><c:out value="${row.sub2}"></c:out></td>
        <td>100</td>
        <td><c:out value="${row.sub2_CA1}"></c:out></td>
        <td><c:out value="${row.sub2_CA1}"></c:out></td>
        <td><c:out value="${row.sub2_Mid}"></c:out></td>
        <td><c:out value="${row.sub2_ETE}"></c:out></td>
        <td><c:out value="${row.sub2_CA1+row.sub2_CA2+row.sub2_mid+row.sub2_ETE}"></c:out></td>
        <td>8.5</td>
        <td><c:choose>
        <c:when test="${row.sub2_CA1+row.sub2_CA2+row.sub2_mid+row.sub2_ETE >= 40}">Pass</c:when>
        <c:when test="${row.sub2_CA1+row.sub2_CA2+row.sub2_mid+row.sub2_ETE < 40}">Fail</c:when>
        </c:choose></td>
    </tr>
    <tr>
        <td>03</td>
        <td><c:out value="${row.sub3}"></c:out></td>
        <td>100</td>
        <td><c:out value="${row.sub3_CA1}"></c:out></td>
        <td><c:out value="${row.sub3_CA2}"></c:out></td>
        <td><c:out value="${row.sub3_Mid}"></c:out></td>
        <td><c:out value="${row.sub3_ETE}"></c:out></td>
        <td><c:out value="${row.sub3_CA1+row.sub3_CA2+row.sub3_mid+row.sub3_ETE}"></c:out></td>
        <td>9</td>
        <td><c:choose>
        <c:when test="${row.sub3_CA1+row.sub3_CA2+row.sub3_mid+row.sub3_ETE >= 40}">Pass</c:when>
        <c:when test="${row.sub3_CA1+row.sub3_CA2+row.sub3_mid+row.sub3_ETE < 40}">Fail</c:when>
        </c:choose></td>
    </tr>
    <tr>
        <td>04</td>
        <td><c:out value="${row.sub4}"></c:out></td>
        <td>100</td>
        <td><c:out value="${row.sub4_CA1}"></c:out></td>
        <td><c:out value="${row.sub4_CA2}"></c:out></td>
        <td><c:out value="${row.sub4_Mid}"></c:out></td>
        <td><c:out value="${row.sub4_ETE}"></c:out></td>
        <td><c:out value="${row.sub4_CA1+row.sub4_CA2+row.sub4_mid+row.sub4_ETE}"></c:out></td>
        <td>10</td>
        <td><c:choose>
        <c:when test="${row.sub4_CA1+row.sub4_CA2+row.sub4_mid+row.sub4_ETE >= 40}">Pass</c:when>
        <c:when test="${row.sub4_CA1+row.sub4_CA2+row.sub4_mid+row.sub4_ETE < 40}">Fail</c:when>
        </c:choose></td>
    </tr>
    <tr>
        <td>05</td>
        <td><c:out value="${row.sub5}"></c:out></td>
        <td>100</td>
        <td><c:out value="${row.sub5_CA1}"></c:out></td>
        <td><c:out value="${row.sub5_CA2}"></c:out></td>
        <td><c:out value="${row.sub5_Mid}"></c:out></td>
        <td><c:out value="${row.sub5_ETE}"></c:out></td>
        <td><c:out value="${row.sub5_CA1+row.sub5_CA2+row.sub5_mid+row.sub5_ETE}"></c:out></td>
        <td>7.5</td>
        <td>
        <c:choose>
        <c:when test="${row.sub5_CA1+row.sub5_CA2+row.sub5_mid+row.sub5_ETE >= 25}">Pass</c:when>
        <c:when test="${row.sub5_CA1+row.sub5_CA2+row.sub5_mid+row.sub5_ETE < 25}">Fail</c:when>
        </c:choose>
        
        </td>
    </tr>

    <tr style="background-color: lightgreen; height:60px;">
        <th colspan="5">Total Grade Points: 42/50</th>
        <th colspan="5">Remark: Brilliant</th>
    </tr> 
</c:forEach>
</table>

</form> 

</div>
<div id="btnid">

    <button id="btn" >
        Print Result
    </button>

</div>   



<script>
    const printBtn = document.getElementById('btn');

    printBtn.addEventListener('click',function(){
        window.print();
    })


</script>
 
</body>
<style>
    table{
        border-collapse: collapse;
        margin:auto;
        padding: auto;
        height :600px;
        width: 40%;
    }
    .container h1{
        font-size:50px ;
        text-align: center;
    }
    .container p{
        text-align: center;
    }
    th{
        padding: 0px 37px;
        font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;
    } 
     td{
        padding:  0px 37px;
        font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;
    }
    #btnid{
    text-align:center;
    }
    #btn{
    
    margin-top: 10px;
    height: 40px; 
    width: 100px;
    font-size:15px;
    border-radius: 10px ;   
}
    
    
</style>
</html>