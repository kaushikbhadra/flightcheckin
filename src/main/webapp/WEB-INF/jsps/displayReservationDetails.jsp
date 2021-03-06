<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>
<h2>Flight Details:</h2>


Airlines: ${reservation.flight.operatingAirlines}<br>
Flight Number: ${reservation.flight.flightNumber}<br>
Departure City: ${reservation.flight.departureCity}<br>
Arrival City: ${reservation.flight.arrivalCity}<br>
Date Of Departure: ${reservation.flight.dateOfDeparture}<br>
Estimated Departure Time: ${reservation.flight.estimatedDepartureTime}

<h2>Passenger Details</h2>
First Name: ${reservation.passenger.firstName}<br>
Middle Name: ${reservation.passenger.middleName}<br>
Last Name: ${reservation.passenger.lastName}<br>
Email: ${reservation.passenger.email}<br>
Phone: ${reservation.passenger.phone}

<form action="completeCheckIn" method = "post">
Enter the Number Of Bags you want to check in: <input type="text" name="numberOfBags"/>
<input type="hidden" value="${reservation.id}" name="reservationId"/>
<input type="submit" value="Check In"/>
</form>
</body>
</html>