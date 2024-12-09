<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f8ff; /* Light blue background */
    }

    h2 {
        color: #0047ab; /* Deep blue */
        text-align: center;
        text-shadow: 2px 2px 4px #888888; /* Subtle shadow */
        margin-top: 20px;
    }

    .navbar {
        display: flex;
        justify-content: center;
        background-color: #0047ab; /* Deep blue */
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Adds depth */
        padding: 10px 0;
    }

    .navbar a {
        text-decoration: none;
        color: white;
        padding: 10px 20px;
        margin: 0 10px;
        font-weight: bold;
        border-radius: 5px;
        transition: all 0.3s ease-in-out;
    }

    .navbar a:hover {
        background-color: #66b2ff; /* Light blue on hover */
        color: #0047ab; /* Text turns deep blue */
        box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3); /* Shadow effect */
    }
</style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <!-- Bootstrap Carousel -->
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active"data-bs-interval="2000">
               <img src="https://th.bing.com/th?id=OIP.s3E3v5rnZ0aX9qFJNi4kpgHaEo&w=316&h=197&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" class="d-block w-100" alt="Image 1" style="height: 500px;">

            </div>
            <div class="carousel-item"data-bs-interval="2000">
                 <img src="https://th.bing.com/th?id=OIP.N-SEP9Mkv69fEprtx6Vb7AHaDt&w=350&h=175&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" class="d-block w-100" alt="Image 2" style="height: 500px;">

        
            </div>
            <div class="carousel-item"data-bs-interval="2000">
             <img src="https://th.bing.com/th/id/OIP.I3iEmAsFZXY9ggh11alf5wHaDV?w=350&h=157&c=7&r=0&o=5&dpr=1.3&pid=1.7" class="d-block w-100" alt="Image 2" style="height: 500px;">
            
                 </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
