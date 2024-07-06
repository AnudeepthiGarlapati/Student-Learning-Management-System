<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('/images/homebackground.png'); /* Replace with the path to your background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center align-items-center min-vh-100">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <h2>Choose Your Role</h2>
                        </div>
                        <div class="btn-group d-flex" role="group">
                            <button type="button" class="btn btn-primary flex-fill" onclick="window.location.href='adminlogin.jsp'">Admin</button>
                            <button type="button" class="btn btn-secondary flex-fill" onclick="window.location.href='sample.html'">User</button>
                            <button type="button" class="btn btn-primary flex-fill" onclick="window.location.href='sample1.html'">Faculty</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
