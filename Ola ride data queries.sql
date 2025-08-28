Create Database OLA;
Use OLA;

#1 Retrieve all successful bookings:
Create View Successful_Bookings As  
SELECT * FROM bookings 
WHERE booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

#2 Find the average ride distance for each vehicle type;
Create View ride_distance_for_each_vehicle As
SELECT Vehicle_Type, avg(Ride_Distance)
as avg_distance FROM bookings
group by Vehicle_Type;

Select * from ride_distance_for_each_vehicle;

#3 Get the total number of cancelled rides by customers:
Create View cancelled_rides_by_customers As
SELECT count(*) from bookings
WHERE Booking_Status = 'Canceled by Customer';

Select * from cancelled_rides_by_customers;

#4  List the top 5 customers who booked the highest number of rides:
Create View Top_5_customers_who_booked_the_highest_number_of_rides As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC LIMIT 5;

Select * from Top_5_customers_who_booked_the_highest_number_of_rides;

#5 Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View rides_cancelled_by_drivers As
SELECT COUNT(*) FROM bookings 
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

Select * from rides_cancelled_by_drivers;

#6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View  maximum_and_minimum_driver_ratings_for_Prime_Sedan As
SELECT MAX(Driver_Ratings) as max_rating, 
MIN(Driver_Ratings) as min_rating 
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

Select * from  maximum_and_minimum_driver_ratings_for_Prime_Sedan;

#7 Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
SELECT * FROM bookings 
WHERE Payment_Method = 'UPI';

Select * from UPI_Payment;

#8 Find the average customer rating per vehicle type:
Create View Avg_Customer_Rating as
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating 
FROM bookings
GROUP BY Vehicle_Type;

Select * from Avg_Customer_Rating;

#9  Calculate the total booking value of rides completed successfully:
Create View total_successful_value_ride_value As
SELECT SUM(Booking_Value) as total_successful_value_ride_value
FROM bookings 
WHERE Booking_Status = 'Success';

Select * from total_successful_value_ride_value;

# 10 List all incomplete rides along with the reason:
Create View incomplete_ride_with_reason As
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides ='Yes';

Select * from incomplete_ride_with_reason;











#1 Retrieve all successful bookings:
SELECT * FROM Successful_Bookings;

#2 Find the average ride distance for each vehicle type;
Select * from ride_distance_for_each_vehicle;

#3 Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

#4  List the top 5 customers who booked the highest number of rides:
Select * from Top_5_customers_who_booked_the_highest_number_of_rides;

#5 Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from rides_cancelled_by_drivers;

#6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from  maximum_and_minimum_driver_ratings_for_Prime_Sedan;

#7 Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;

#8 Find the average customer rating per vehicle type:
Select * from Avg_Customer_Rating;

#9  Calculate the total booking value of rides completed successfully:
Select * from total_successful_value_ride_value;

# 10 List all incomplete rides along with the reason:
Select * from incomplete_ride_with_reason;




