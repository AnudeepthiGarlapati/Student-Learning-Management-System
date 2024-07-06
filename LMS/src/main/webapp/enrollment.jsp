<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Enrollment</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 50px;
            background-color: #f4f4f4;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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
        
        h1 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }
    </style>
</head>
<body>
   <!-- Bootstrap Navbar -->
<nav class="navbar navbar-expand-lg navbar-ligth bg-dark">
    <a class="navbar-brand" href="#">
        <img src="images/logo.png" alt="Logo" width="50" height="50">
        Student LMS
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
                        onclick="location.href='sample.html'">Home</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='courses.jsp'">Courses</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='enrollment.jsp'">Enrollment</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='participants2.html'">Faculty List</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='contactus.jsp'">Contact Us</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='about.jsp'">About Us</button>
            </li>
            <li class="nav-item">
                <button class="nav-link btn btn-link"
                        onclick="location.href='home.jsp'">Logout</button>
            </li>
        </ul>
    </div>
</nav>
    <div class="container"><br/>
        <h1>Course Enrollment</h1>
        <form action="enroll" method="post">
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="courses">Select Courses:</label>
                <select id="courses" name="courses" class="form-control" multiple required>
                    <option value="course1">Course 1</option>
                    <option value="course2">Course 2</option>
                    <option value="course3">Course 3</option>
                    <option value="course4">Course 3</option>
                    <option value="course5">Course 3</option>
                    <option value="course6">Course 3</option>
                </select>
            </div>
           <button class="btn btn-primary course-button"
                            onclick="location.href='course.html'">Enroll</button>
        </form>
    </div>

    <!-- Link to Bootstrap and jQuery JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
