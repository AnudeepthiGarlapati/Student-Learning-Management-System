<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Courses</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #e53935;
            background: -webkit-linear-gradient(to right, #e35d5b, #e53935);
            background: linear-gradient(to right, white, white);
        }
        
        .navbar {
            background: #e53935;
            background: -webkit-linear-gradient(to right, #e35d5b, #e53935);
            background: linear-gradient(to right,skyblue, white);
        }
        
        .navbar .nav-link {
            color: black;
        }

        .navbar .navbar-toggler-icon {
            background-color: black;
        }
        
        .custom-btn-color {
            background-color: white;
            color: #fff;
        }

        .course-button {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Bootstrap Navbar -->
<nav class="navbar navbar-expand-lg navbar-ligth bg-dark">
    <a class="navbar-brand" href="#">
        <img src="images/logo.png" alt="Logo" width="50" height="50">
        Faculty LMS
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='sample1.html'">Home</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='courses1.jsp'">Courses</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='contactus.jsp'">Contact Us</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='mail.html'">Chat</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='home.jsp'">Logout</button>
            </li>
        </ul>
    </div>
</nav>
    <div class="container">
        <h1>Available Courses</h1>
        <ul>
            <li>
                <img src="images/course1.png" alt="Course 1 Image">
                <div>
                    <h2>Course 1</h2>
                    <p>Course 1 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view1.html'">View</button>
                </div>
            </li>
            <br/>
            <li>
                <img src="images/course2.png" alt="Course 2 Image">
                <div>
                    <h2>Course 2</h2>
                    <p>Course 2 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view2.html'">View</button>
                </div>
            </li>
            <br/>
            <li>
                <img src="images/course3.png" alt="Course 3 Image">
                <div>
                    <h2>Course 3</h2>
                    <p>Course 3 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view1.html'">View</button>
                </div>
            </li>
            <br/>
            <li>
                <img src="images/course1.png" alt="Course 1 Image">
                <div>
                    <h2>Course 4</h2>
                    <p>Course 4 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view2.html'">View</button>
                </div>
            </li>
            <br/>
            <li>
                <img src="images/course2.png" alt="Course 2 Image">
                <div>
                    <h2>Course 5</h2>
                    <p>Course 5 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view1.html'">View</button>
                </div>
            </li>
            <br/>
            <li>
                <img src="images/course3.png" alt="Course 3 Image">
                <div>
                    <h2>Course 6</h2>
                    <p>Course 6 description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <button class="btn btn-primary course-button"
                            onclick="location.href='view2.html'">View</button>
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
