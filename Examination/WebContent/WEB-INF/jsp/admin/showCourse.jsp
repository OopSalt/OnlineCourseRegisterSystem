<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>Course Information</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

	<%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>

</head>
<body>
<!-- Top hurdle -->
<jsp:include page="top.jsp"></jsp:include>
<!-- Intermediate subject -->
<div class="container" id="content">
	<div class="row">
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="col-md-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="row">
						<h1 class="col-md-5">Course list management</h1>
						<form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;" action="/admin/selectCourse" id="form1" method="post">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Please enter the name: " name="findByName">
								<span class="input-group-addon btn" onclick="document.getElementById('form1').submit" id="sub">Search</span>
							</div>
						</form>
						<button class="btn btn-default col-md-2" style="margin-top: 20px" onClick="location.href='/admin/addCourse'">
							Add course information
							<sapn class="glyphicon glyphicon-plus"/>
						</button>

					</div>
				</div>
				<table class="table table-bordered">
					<thead>
					<tr>
						<th>Course Number</th>
						<th>Course Name</th>
						<th>Instructor Number</th>
						<th>Class Time</th>
						<th>Class Location</th>
						<th>Cycle number</th>
						<th>Course type</th>
						<th>Credit</th>
						<th>Operation</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach  items="${courseList}" var="item">
						<tr>
							<td>${item.courseid}</td>
							<td>${item.coursename}</td>
							<td>${item.teacherid}</td>
							<td>${item.coursetime}</td>
							<td>${item.classroom}</td>
							<td>${item.courseweek}</td>
							<td>${item.coursetype}</td>
							<td>${item.score}</td>
							<td>
								<button class="btn btn-default btn-xs btn-info" onClick="location.href='/admin/editCourse?id=${item.courseid}'">Modify</button>
								<button class="btn btn-default btn-xs btn-danger btn-primary" onClick="location.href='/admin/removeCourse?id=${item.courseid}'">Delete</button>
								<!--Popup-->
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="panel-footer">
					<c:if test="${pagingVO != null}">
						<nav style="text-align: center">
							<ul class="pagination">
								<li><a href="/admin/showCourse?page=${pagingVO.upPageNo}">&laquo;Previous Page</a></li>
								<li class="active"><a href="">${pagingVO.curentPageNo}</a></li>
								<c:if test="${pagingVO.curentPageNo+1 <= pagingVO.totalCount}">
									<li><a href="/admin/showCourse?page=${pagingVO.curentPageNo+1}">${pagingVO.curentPageNo+1}</a></li>
								</c:if>
								<c:if test="${pagingVO.curentPageNo+2 <= pagingVO.totalCount}">
									<li><a href="/admin/showCourse?page=${pagingVO.curentPageNo+2}">${pagingVO.curentPageNo+2}</a></li>
								</c:if>
								<c:if test="${pagingVO.curentPageNo+3 <= pagingVO.totalCount}">
									<li><a href="/admin/showCourse?page=${pagingVO.curentPageNo+3}">${pagingVO.curentPageNo+3}</a></li>
								</c:if>
								<c:if test="${pagingVO.curentPageNo+4 <= pagingVO.totalCount}">
									<li><a href="/admin/showCourse?page=${pagingVO.curentPageNo+4}">${pagingVO.curentPageNo+4}</a></li>
								</c:if>
								<li><a href="/admin/showCourse?page=${pagingVO.totalCount}">Last Page&raquo;</a></li>
							</ul>
						</nav>
					</c:if>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="container" id="footer">
	<div class="row">
		<div class="col-md-12"></div>
	</div>
</div>
</body>
<script type="text/javascript">
	<%--Settings menu--%>
	$("#nav li:nth-child(1)").addClass("active")
	<c:if test="${pagingVO != null}">
	if (${pagingVO.curentPageNo} == ${pagingVO.totalCount}) {
		$(".pagination li:last-child").addClass("disabled")
	};

	if (${pagingVO.curentPageNo} == ${1}) {
		$(".pagination li:nth-child(1)").addClass("disabled")
	};
	</c:if>

	function confirmd() {
		var msg = "Are you sure you want to delete it?";
		if (confirm(msg)==true){
			return true;
		}else{
			return false;
		}
	}

	$("#sub").click(function () {
		$("#form1").submit();
	});
</script>
</html>