create table tblAirport
(
	Airportcode nvarchar(10),
	Name nvarchar(20),
	City nvarchar(50),
	State  nvarchar(50),
	primary key(Airportcode) ,

)

create table tbAirplane
( 
	AirplaneID nchar(10),
	AriplaneName nvarchar(20),
	TotalSeat int ,
	Company nvarchar(50),
	primary key (AirplaneID)

)

create table Canland
(	
	Airportcode nvarchar(10),
	AirplaneID nchar(10),
	TimeLand datetime,
	primary key(AirportCode , AirplaneID),
	foreign key(AirportCode) references tblAirport(AirportCode),
	foreign key(AirplaneID) references tbAirplane(AirplaneID),

)