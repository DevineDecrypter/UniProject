select * from Destination
select * from Hotel
select * from CustomerTicket

select CustomerTicket.CustomerName,
       CustomerTicket.CustomerID,
	   Hotel.HotelName,
	   Destination.Destination

	   from CustomerTicket inner join Destination on CustomerTicket.DestinationID = Destination.DestinationID
	   inner join Hotel on Destination.HotelID = Hotel.HotelID