<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/product/productList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/pagination.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/product/productSideBar.css" rel="stylesheet">
<script type="text/javascript">




</script>
</head>
<body>
<%@ include file="/resources/temp/header.jsp"%>

	<!-- 바디 부분 -->
	<h2>코디</h2>
	<h1><a href="" onclick="window.open('${pageContext.request.contextPath}/fashion/codiWrite','codi','width=1200,height=700');return false;">코디 생성</a></h1>
	
	<!-- 코디 리스트 -->

		<!-- 상품 리스트:S -->
		<nav class="navbar">
			<div class="navbar-collapse collapse" style="padding-left: 0; border-bottom: 1px solid #eee;">
				<ul class="nav navbar-nav category-type">
					<li><a style="cursor: pointer" class="sel_type"><input class="inhc_sel" type="hidden" value="1">최신순</a></li>
					<li><a style="cursor: pointer" class="sel_type"><input class="inhc_sel" type="hidden" value="2">인기순</a></li>
					<li><a style="cursor: pointer" class="sel_type"><input class="inhc_sel" type="hidden" value="3">낮은 가격 순</a></li>
					<li>
						<!-- <input name="sel" type="radio" class="sel_radio" value="5"> -->
						<a style="cursor: pointer" class="sel_type"><input class="inhc_sel" type="hidden" value="4">높은 가격 순</a>
					</li>
				</ul>
			</div>
		</nav>
	
		<div id="item-table">
			<ul class="list-inline" style="width: 850px;">
				<c:forEach items="${list}" var="list1">
					<li style="padding-left: 20px;" class="viewItem">
						<div class="mc" style="border: 1px solid #eee;">
							<span class="img"> <a href="${pageContext.request.contextPath}/fashion/codiView?num=${list1.num}">
									<img src="${pageContext.request.contextPath}/resources/codiUpload/${list1.fileName}" width="250" height="250">
							</a>
							</span>
							<div class="item-info" style="padding-left: 10px;">
								<p style="padding-top: 10px;">
									<a href="${pageContext.request.contextPath}/fashion/codiView?num=${list1.num}">${list1.title}</a>
								</p>
								<!-- 작성자 ID -->
								<div>작성자 : ${list1.member_id }</div>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			<!-- 상품 리스트:E -->
		</div>
		<!-- PAGINATIOIN:S -->
		<div class="center-block">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<c:if test="${!empty list}">
						<li>
							<c:if test="${pageing.curBlock>1}">
								<a class="a_prev" aria-label="Previous"	style="cursor: pointer"><input class="inh_prev"	type="hidden" value="${pageing.startNum-1}">
								<span aria-hidden="true">&laquo;</span>
								</a>
							</c:if>
						</li>
						<li>
							<c:forEach begin="${pageing.startNum}" step="1"	end="${pageing.lastNum}" var="i">
								<a style="cursor: pointer" class="N_pageing">${i}</a>
							</c:forEach>
						</li>
						<li>
							<c:if test="${pageing.curBlock<pageing.totalBlock}">
								<a class="a_next" aria-label="Next" style="cursor: pointer">
									<input class="inh_next" type="hidden" value="${pageing.lastNum+1}">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</c:if>
						</li>
					</c:if>
				</ul>
			</nav>
		</div>
		<!-- PAGINATIOIN:E -->

<%@ include file="/resources/temp/footer.jsp"%>	
</body>
</html>