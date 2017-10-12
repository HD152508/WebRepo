<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>BLOG</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

	<!-- Custom styles for this template -->
	<link href="/WebClass/css/myblogCSS.css" rel="stylesheet">

</head>
<body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">BLOG</h3>
              <nav class="nav nav-masthead">
                <a class="nav-link active" href="#">Home</a>
                <a class="nav-link" href="Profile.html">Profile</a>
                <a class="nav-link" href="Favorite.html">Favorite</a>
				<a class="nav-link" href="Bucket.html">Bucket</a>
				
				<%-- 세션에 사용자 정보가 없는 경우 --%>
			    <%
			    	UserVO user = (UserVO) session.getAttribute("user");
			    	if (user == null) {
			    %>
			    	<a class="nav-link" href="/WebClass/jsp/login.jsp">Log In</a>
			    <% } else { %>
			    <%-- 세션이 있는 경우 --%>
				    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				    <li class="nav-item dropdown">
				      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    	&nbsp;&nbsp; <%= user.getName() + "님" %>
				      </a>
				      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
				      	<form action="/WebClass/bloglogout" method="post">
				      		<button type="submit" class="dropdown-item">Sign out</button>
				      	</form>
				       	<div class="dropdown-divider"></div>
				        <button type="button" class="dropdown-item">Action1</button>
				        <button type="button" class="dropdown-item">Action2</button>
				      </div>
				    </li>
				    </ul>
				<%
			    	}
				%>
              </nav>
            </div>
          </div>
          

          <div class="inner cover" id="contents">
            <h1 class="cover-heading">In My Life</h1>
						<h6>Beatles</h6>
            <p class="lead">
							There are places I remember.
							All my life though some have changed.<br />
							Some forever not for better.
							Some have gone and some remain.<br />
							All these places have their moments.
							With lovers and friends I still can recall.<br />
							Some are dead and some are living.
							In my life I've loved them all.<br />
						</p>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-lg btn-secondary" data-toggle="modal" data-target="#joinInModal">
							Join in
						</button>
          </div>

          <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="https://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

		<!-- Modal -->
		<div class="modal fade" id="joinInModal" tabindex="-1" role="dialog" aria-labelledby="joinInModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="joinInModalLabel">회원가입</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form id="JoinInForm">
						<div class="modal-body">
							<div id="grade">
								학년 &nbsp;
								<div class="form-check form-check-inline">
								<label class="form-check-label">
									<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="firstGrade" required> 1
								</label>
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label">
										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="secondGrade"> 2
								</label>
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label">
										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="thirdGrade"> 3
									</label>
								</div>
								<select class="custom-select" style="margin-left: 45%;" required>
									<option value="" selected>반</option>
									<option value="1">1반</option>
									<option value="2">2반</option>
									<option value="3">3반</option>
									<option value="4">4반</option>
									<option value="5">5반</option>
									<option value="6">6반</option>
								</select>
						</div>
						<div id="stuNum">
							<h6>번호</h6>
							<input id="studentNumber" class="form-control" required>
						</div>
						<br />
						<div id="stuName">
							<h6>이름</h6>
							<input id="name" class="form-control" required>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Join In</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="JoinInResultModal" tabindex="-1" role="dialog" aria-labelledby="JoinInResult" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="JoinInResult">회원가입 결과</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
			</div>
		</div>
	</div>

	



	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script src="../js/blogJS.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->


</body>
</html>
