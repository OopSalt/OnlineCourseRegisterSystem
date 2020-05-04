<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	<!-- JQuery  bootstrap.js-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</head>
<body>
<!-- Top -->
<jsp:include page="top.jsp"></jsp:include>
<!-- subject -->
<div class="container" id="content">
	<div class="row">
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="col-md-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="row">
						<h1 style="text-align: center;">Add student information</h1>
					</div>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="/admin/addStudent" id="editfrom" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Student ID</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" id="inputEmail3" name="userid" placeholder="Please enter the student ID"
								<c:if test='${student!=null}'>
									   value="${student.userid}"
								</c:if>>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Student name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="username" placeholder="Please enter the student name"
								<c:if test='${student!=null}'>
									   value="${student.username}"
								</c:if>>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">gender</label>
							<div class="col-sm-10">
								<label class="checkbox-inline">
									<input type="radio" name="sex" value="male" checked>male
								</label>
								<label class="checkbox-inline">
									<input type="radio" name="sex" value="female">female
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">birth date</label>
							<div class="col-sm-10">
								<input type="date" value="1996-09-02" name="birthyear"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="grade"> enrollment date</label>
							<div class="col-sm-10">
								<input type="date" value="2015-09-02" name="grade"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="grade">department</label>
							<div class="col-sm-10">
								<select class="form-control" name="collegeid">
									<c:forEach items="${collegeList}" var="item">
										<option value="${item.collegeid}">${item.collegename}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group" style="text-align: center">
							<button class="btn btn-default" type="submit">submit</button>
							<button class="btn btn-default" type="reset">reset</button>
						</div>
					</form>
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
	$("#nav li:nth-child(2)").addClass("active")
</script>
</html>