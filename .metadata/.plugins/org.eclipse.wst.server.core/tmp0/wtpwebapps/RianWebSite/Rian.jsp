<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rian company</title>
    
    <!--스타일시트 등록-->
    <link rel="stylesheet" href="./css/style.css">
    
    <!--제이쿼리 등록-->
    <script src="../js/jquery-2.1.3.min.js">
    </script>
    <script src="../js/jquery.vide.min.js">
    </script>
    <script src="../js/jquery.scrollTo.min.js">
    </script>
    
    <!--제이쿼리 작성-->
    <script>
    
    $(document).ready(function(){
        $('nav a').click(function(e){
            $.scrollTo(this.hash||0, 280);
            e.preventDefault();
        });
        $('#btn_gotop').click(function(e){
            $.scrollTo(this.hash||0, 280);
            e.preventDefault();
        });
    });
    
    $(function () {
            var trigger = $('#trigger');
            var menu = $('nav ul');
            $(trigger).on('click', function(e) {
                e.preventDefault();
                menu.slideToggle();
            });
            $(window).resize(function () {
                var w = $(window).width();
                if(w>320 && menu.is(':hidden')) {
                    menu.removeAttr('style');
                }
            });
        });
    </script>
    <!--제이쿼리 작성 끝-->
    
</head>


<body>

	<div id="container">
	<!-- 
	    네비게이션
	    <nav class="clearfix">
	        <ul class="clearfix">
	            <li onclick="location.href='../ViewPage/main.jsp'"><a href="">Overview</a></li>
	            <li onclick="location.href='../Movie/login.jsp'"><a href="">Tech</a></li>
	            <li onclick="location.href='../Movie/memberJoin.jsp'"><a href="">BADARO</a></li>
	            <li><a href="#1">Main Tech</a></li>
	            <li><a href="#2">Certification</a></li>
	            <li><a href="#3">B & P</a></li>
	        </ul>
	        <a href="" id="trigger"></a>
	    네비게이션 끝    
	    </nav>
	
	 -->
	 
	 
		<!--본문-->
	    <%for(int i=1; i<14; i++) { %>
	    <div id="container" class="page<%=i%>">
	    <img src="./images/<%=i%>.png" style="width: 100%;">
	    </div>
	    <% } %>
	    <!--본문 끝-->
    
    
    	<!--최상단 이동-->
	    <a href="#5" id="btn_gotop" class="btn_gotop">
	    	<img src="../images/topbutton.png" style="width:80px; display: block; margin: 240px; "> 
		  	<span class="glyphicon glyphicon-chevron-up">
		  	</span>
		</a>
		<!--이동 끝-->
	</div>
</body>
</html>