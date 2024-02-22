<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile - Facebook Lite</title>
    <style>
        .container {
            width: 50%;
            margin: auto;
            text-align: center;
        }
        #profileImage {
            max-width: 200px;
            max-height: 200px;
            border-radius: 50%;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Update Your Profile</h1>
    <form action="<%= request.getContextPath() %>/updateProfile" method="post" enctype="multipart/form-data">
        <label for="bio"><b>Bio:</b></label>
        <input type="text" placeholder="Enter Bio" name="bio" value="<%= request.getAttribute("userBio") %>">
        <br>

        <label for="address"><b>Address:</b></label>
        <input type="text" placeholder="Enter Address" name="address" value="<%= request.getAttribute("userAddress") %>">
        <br>

        <label for="profileImage">Update Profile Image:</label>
        <input type="file" id="profileImage" name="profileImage" accept="image/*">
        <br>

        <button type="submit">Update Profile</button>
    </form>
</div>

</body>
</html>