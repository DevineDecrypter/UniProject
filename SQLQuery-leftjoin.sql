select * from Destination
select * from Hotel
select * from CustomerTicket

select CustomerTicket.CustomerName,
       CustomerTicket.CustomerID,
	   Hotel.HotelName,
	   Destination.Destination

	   from CustomerTicket left join Destination on CustomerTicket.DestinationID = Destination.DestinationID
	   left join Hotel on Destination.HotelID = Hotel.HotelID