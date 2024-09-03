<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places"></script>
    <script>
        let map;
    
        function initMap() {
          const hotelLocation = { lat: 37.7749, lng: -122.4194 }; // Replace with actual coordinates
          map = new google.maps.Map(document.getElementById("map"), {
            center: hotelLocation,
            zoom: 14,
          });
          const marker = new google.maps.Marker({
            position: hotelLocation,
            map: map,
            title: "Hotel Location",
          });
        }
      </script>

    <style>
        .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    background-color: #576675;
    color: #fff;
  }
  .logo {
    font-size: 24px;
    font-weight: bold;
  }
  .auth-forms {
    display: flex;
    gap: 10px;
  }
  .auth-forms a {
    color: #fff;
    text-decoration: none;
  }
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
      }
      
      .booking-form {
        width: 300px;
        margin: 100px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }
      
      h1 {
        text-align: center;
        margin-bottom: 20px;
      }
      
      form {
        display: flex;
        flex-direction: column;
      }
      
      label {
        margin-bottom: 5px;
      }
      
      input {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
      }
      
      button {
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
      }
      
      button:hover {
        background-color: #0056b3;
      }
      
      /* Responsive styles */
      @media (max-width: 400px) {
        .booking-form {
          width: 90%;
        }
      }


      select {
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 3px;
    }

      </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel Room Booking</title>
  
</head>
<body>
  <body>
    <div class="container">
      <div class="header">
        <div class="logo">Travel Management</div>
        <div class="auth-forms">
          <a href="home.html">Home</a>
         
        </div>
      </div>
  <div class="booking-form">
    <h1>Hotel Room Booking</h1>
    <form action="saveBooking" method="post" th:object="${details}">
    
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>
      
      <label for="email">Email:</label>
      <input type="text" id="email" name="email" required>
   	
      <label for="check-in">Check-In Date:</label>
      <input type="date" id="check-in" name="checkIn" required>
      
      <label for="check-out">Check-Out Date:</label>
      <input type="date" id="check-out" name="checkOut" required>

      <label for="persons">Number of Persons:</label>
      <input type="number" id="persons" name="persons" min="1" required>
      
      
      
      <label for="room-type">Room Type:</label>
      <select id="room-number" name="roomNumber" required>
        <option value="" disabled selected>Select Room Type</option>
        <option value="801">Suite</option>
        <option value="802">Family</option>
        <option value="803">Super Deluxe</option>
        <option value="804">Deluxe</option>
        <option value="805">Quad</option>
      </select>
      
      <label for="rooms">Number of Rooms:</label>
      <input type="number" id="rooms" name="rooms" min="1" required>

      <button type="submit">Book Now</button>

      <div id="map" class="map"></div>
      <div class="cta-button">
        <a href="payment.html">Book Now</a>
      </div>
    </form>
  </div>
</body>
</html>
