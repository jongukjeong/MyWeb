<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
     href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

</head>
<body>

<!-- menu.jsp 
<nav class="navbar navbar-expand navbar-dark bg-dark">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" 
          href="./welcome.jsp">Home</a>
    </div>
  </div>
</nav>
-->
<%@ include file="menu.jsp" %>


<%!
String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
String tagline = "Welcome to Web Market!";
%>


<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">
      <%=greeting %>
    </h1>
  </div>
</div>

<main role="main">
  <div class="container">
    <div class="text-center">
      <h3>
        <%=tagline %>
        
      </h3>
      <p>
      <% 
        response.setIntHeader("Refresh", 5);
        Date day = new Date();
        String am_pm;
        int hour = day.getHours();
        int minute = day.getMinutes();
        int second = day.getSeconds();
        if(hour / 12 == 0){
          am_pm = "AM";
        }else{
          am_pm = "PM";
          
        }
        String CT = hour + ":" + minute + ":" + second + " " + am_pm;
        out.println("현재 접속 시각 : " + CT + "\n");
      %>
      </p>
      
    </div>
    <hr>
  </div>
</main>

<!-- footer.jsp 
<footer class="container">
  <p>&copy; WebMarket</p>
</footer>
-->
<%@ include file="footer.jsp" %>


</body>
</html>