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
						<h1 style="text-align: center;">Modify course information</h1>
					</div>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="/admin/editCourse" id="editfrom" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Course number</label>
							<div class="col-sm-10">
								<input readonly="readonly"  type="number" class="form-control" id="inputEmail3" value="${course.courseid}" name="courseid" placeholder="Please enter the course number">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">course name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="coursename" value="${course.coursename}" placeholder="Please enter the course name">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="grade">Instructor ID</label>
							<div class="col-sm-10">
								<select class="form-control" name="teacherid" id="teacherid">
									<c:forEach items="${teacherList}" var="item">
										<option value="${item.userid}">${item.username}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">course time</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="coursetime" value="${course.coursetime}" placeholder="course time">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">classroom</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="classroom" value="${course.classroom}" placeholder="classroom">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">weeks</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" name="courseweek" value="${course.courseweek}" placeholder="Please enter the weeks">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="coursetype">course type：</label>
							<div class="col-sm-10">
								<select class="form-control" name="coursetype" id="coursetype">
									<option value="required course">Required course</option>
									<option value="Elective courses">Elective courses</option>
									<option value="common course">Common course</option>
								</select>
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
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Credits：</label>
							<div class="col-sm-10">
								<input type="number" class="form-control" name="score" value="${course.score}" placeholder="Please enter the credits">
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
	$("#nav li:nth-child(1)").addClass("active")

	var collegeSelect = $("#college option");
	for (var i=0; i<collegeSelect.length; i++) {
		if (collegeSelect[i].value == '${course.collegeid}') {
			collegeSelect[i].selected = true;
		}
	}

	var degreeSelect = $("#coursetype option");
	for (var i=0; i<coursetypeSelect.length; i++) {
		if (coursetypeSelect[i].value == '${course.coursetype}') {
			coursetypeSelect[i].selected = true;
		}
	}

	var teacheridSelect = $("#teacherid option");
	for (var i=0; i<teacheridSelect.length; i++) {
		if (teacheridSelect[i].value == '${course.teacherid}') {
			teacheridSelect[i].selected = true;
		}
	}

</script>
</html>