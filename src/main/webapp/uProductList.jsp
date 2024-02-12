<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%/*
--------------------------------------------------------------
* Description 	: User Prodcut List 
		Detail	: 상품 목록 조회 및 검색, 정렬 기능 
    		  	
* Author 		: PDG
* Date 			: 2024.02.05
* ---------------------------Update---------------------------		
* <<2024.02.09>> by PDG
    1.  주석안달아서 여기는 내가 먹음. 
    2.  CSS 추가. 사진 너무커서 줄임. 
    3. 정렬 전혀안됨. + 기본순정렬 = 이름순으로 정렬할것. 
    4. 상품 선택시 상품의 정보가 상세페이지로 이동하면서 세션에 저장되게 함. 
  <<2024.02.11> by pdg
	1. 기존의 꺽쇠 퍼센트를 엑션태그로 최대한 교체함. 
	   	<jsp:include>,
	   	<jsp:forward>, -> 다른 페이지로 요청을 넘김  
	   	<jsp:useBean>, 
	   	<jsp:setProperty>,
	   	<jsp:getProperty>,
	   	<jsp:param> -> 다른페이지로 매개변수 전달. 
	   	지시어는 안에 표션식 불가능하지만 액션태그는 표현식 사용가능함. 
--------------------------------------------------------------
*/ %>
<%-- <%@ include file ="top_user.jsp" %> --%>
<% 
	// top 
	String topPath = "top_user.jsp";
%>	
<jsp:include page= "<%= topPath %>"/>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="uProductList.css" />
	</head>
	<body>
		<input type="text" placeholder="찾고싶은 상품을 입력하세요!" id ="product_name" size="50"></input>
		<button id ="searchButton">검색</button>
	   	<select id="classifyOption">
		 	<option value="highprice">높은가격순</option>
		 	<option value="lowprice">낮은가격순</option>
	    </select>
	    <!-- 상품평 전체 조회 -->
	    <div class="container">
	    	<div id="result" class="row"></div>
	    </div>
	 	<div id="product-list"></div>
	 	<div id="pagination"></div>
	    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	    <script src="uProduct.js?var=1"></script>
	</body>
</html>
