<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
    <% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
    <nav class ="navbar navbar-default">
        <div class="navbar-header"> <!-- 홈페이지의 로고 -->
            <button type="button" class="navbar-toggle collapsed"
                data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                aria-expand="false">
                <span class ="icon-bar"></span> <!-- 줄였을때 옆에 짝대기 -->
                <span class ="icon-bar"></span>
                <span class ="icon-bar"></span>
            </button>
            <a class ="navbar-brand" href="main.jsp">우야의 일기장</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="main.jsp">메인</a></li> <!-- 메인 페이지 -->
                <li><a href="bbs.jsp">일기장</a></li>
            </ul>
            <%
            	if (userID == null){
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" 
                    aria-haspopup="true"
                    aria-expanded="false">접속하기<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp">로그인</a></li>
                        <li><a href="join.jsp">회원가입</a></li>                    
                    </ul>
                </li>
            </ul>
            <%
            	}else{
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                <a href="#" class = "dropdown-toggle"
                    data-toggle="dropdown" role ="button" 
                    aria-haspopup="true"
                    aria-expanded="false">회원관리<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
            <% 
            	}
            %>
        </div>
    </nav>
    <div class="container">
    	<div class="jumbotron">
    		<div class ="container">
    		    <img src="img/일기장.jpg" height="500" width="990">
    			<h1>소소한 일상을 기록하자.</h1>
    			<p>오늘도 일기를 써보자</p>
    		</div>
    	</div>
    </div>
    <div class="container">
    	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    		<ol class="carousel-indicators">
	    		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    		<li data-target="#myCarousel" data-slide-to="1"></li>
	    		<li data-target="#myCarousel" data-slide-to="2"></li>
    		</ol>
    		<div class="carousel-inner">
	    		<div class="item active">
	    			<img src="img/봄.jpg" height="600" width="1200">
	    		</div>
	    		<div class="item">
	    			<img src="img/여름.jpg" height="600" width="1200">
	    		</div>
	    		<div class="item">
	    			<img src="img/가을.jpg" height="600" width="1200">
	    		</div>
	    		<div class="item">
	    			<img src="img/겨울.jpg" height="600" width="1200">
	    		</div>
    		</div>
    		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
    			<span class="glyphicon glyphicon-chevron-left"></span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" data-slide="next">
    			<span class="glyphicon glyphicon-chevron-right"></span>
    		</a>
    	</div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>