<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        /* Basic styling for the admin dashboard */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url("https://etimg.etb2bimg.com/photo/97363975.cms") no-repeat;
            background-size: cover;
        }

        #header {
            background: rgba(0, 0, 0, 0.6);
            color: white;
            padding: 25px;
        }

        h1 {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin: 0;
        }

        nav {
            background-color: #333;
            color: white;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        li {
            display: inline;
            margin-right: 10px;
        }

        a {
            text-decoration: none;
            color: white;
        }

        #content {
            background: rgba(0, 0, 0, 0.6);
            color: white;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div id="header">
        <h1>Admin Dashboard</h1>
        <nav>
            <ul>
                <li><a href="#services">Manage Services</a></li>
                <li><a href="hotels">Manage Rooms</a></li>
                <li><a href="checkin">Manage Bookings</a></li>
                <li><a href="orders">Food Orders</a></li>
                <li><a href="#payments-received">Payments Received</a></li>
                <li><a href="users">User Details</a></li>
                <!-- Add more navigation items for other components as needed -->
            </ul>
        </nav>
    </div>
    <div id="content">
        <!-- Content from the selected component will be loaded here -->
    </div>

   
</body>
</html>
