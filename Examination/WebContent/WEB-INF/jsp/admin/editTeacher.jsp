<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

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
<!-- Subject -->
<div class="container" id="content">
	<div class="row">
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="col-md-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="row">
						<h1 style="text-align: center;">Modify instructor information</h1>
					</div>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="/admin/editTeacher" id="editfrom" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Instructor ID</label>
							<div class="col-sm-10">
								<input readonly="readonly" type="number" class="form-control" id="inputEmail3" name="userid" placeholder="Please enter the Instructor ID" value="${teacher.userid}">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="username" placeholder="Please enter the name" value="${teacher.username}">
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
								<input type="date" value="<fmt:formatDate value="${teacher.birthyear}" dateStyle="medium" pattern="yyyy-MM-dd" />" name="birthyear"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="degree">degree：</label>
							<div class="col-sm-10">
								<select class="form-control" name="degree" id="degree">
									<option value="bachelor">bachelor</option>
									<option value="master">master</option>
									<option value="doctor">doctor</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="title" >title：</label>
							<div class="col-sm-10">
								<select class="form-control" name="title" id="title">
									<option value="teacher">teacher</option>
									<option value="Assistant">Assistant</option>
									<option value="lecturer">lecturer</option>
									<option value="associate professor">associate professor</option>
									<option value="professior">professior</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="grade">Entry time</label>
							<div class="col-sm-10">
								<input type="date" value="<fmt:formatDate value="${teacher.grade}" dateStyle="medium" pattern="yyyy-MM-dd" />" name="grade"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label" name="grade">department</label>
							<div class="col-sm-10">
								<select class="form-control" name="collegeid" id="college">
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
	$("#nav li:nth-child(3)").addClass("active");

	var collegeSelect = $("#college option");
	for (var i=0; i<collegeSelect.length; i++) {
		if (collegeSelect[i].value == '${teacher.collegeid}') {
			collegeSelect[i].selected = true;
		}
	}

	var degreeSelect = $("#degree option");
	var titleSelect = $("#title option");

	for (var i=0; i<degreeSelect.length; i++) {
		if (degreeSelect[i].value == '${teacher.degree}') {
			degreeSelect[i].selected = true;
		}
	}
	for (var i=0; i<titleSelect.length; i++) {
		if (titleSelect[i].value == '${teacher.title}') {
			titleSelect[i].selected = true;
		}
	}

</script>
</html>