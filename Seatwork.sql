Create database seatworkDB;

use seatworkDB;

Create table Artist
(
	ArtistID int Primary Key,
	ArtistName varchar(100)
);

Create table ArtObject
(
	ArtID int Primary Key,
	title varchar(50) not null,
	description varchar(250) null,
	ArtistID int null,
	Foreign Key (ArtistID) References Artist(ArtistID)
);

Create table Painting
(	
	ArtID int Primary key,
	DrawnOn varchar(20) not null,
	Foreign Key(ArtID) References ArtObject(ArtID)
);

Create table Sculpture
(	
	ArtID int Primary key,
	Weight float not null, -- in kg
	Height float not null, -- in meters
	Foreign Key(ArtID) References ArtObject(ArtID)
);
