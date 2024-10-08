-- In this task you need to create a new procedure called AddBooking to add a new table booking record.
-- The procedure should include four input parameters in the form of the following bookings parameters:
-- booking id, 
-- booking date,
-- table number,
-- and customer id.

DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_id INT, IN Booking_date DATETIME, IN Table_Number INT, IN Customer_id INT)
BEGIN
	INSERT INTO Bookings(BookingID, BookingDate, TableNumber, CustomerID) VALUES
    (Booking_id, Booking_date, Table_Number, Customer_id);
    SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;

