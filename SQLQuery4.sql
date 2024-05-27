CREATE TABLE State (
	[StateId] int NOT NULL IDENTITY,
	[StateName] varchar(300) NOT NULL,
	PRIMARY KEY ([StateId])
);

CREATE TABLE City (
	[CityId] int NOT NULL IDENTITY,
	[StateId] int NOT NULL,
        [CityName] varchar NOT NULL,
	PRIMARY KEY ([CityId])
);

CREATE TABLE Airport (
	[ApId] int NOT NULL IDENTITY,
	[ApName] varchar(300) NOT NULL,
	[HubId] int NOT NULL,
	PRIMARY KEY ([ApId])
);

CREATE TABLE Hub (
	[HubId] int NOT NULL IDENTITY,
	[HName] varchar(300) NOT NULL,
	[Address] VARCHAR(max) NOT NULL,
	[StateId] int NOT NULL,
	[CityId] int NOT NULL,
	PRIMARY KEY ([HubId])
);

CREATE TABLE CarClass (
	[CarId] int NOT NULL IDENTITY,
	[CType] varchar(300) NOT NULL,
	[CImg] varchar(300) NOT NULL,
	[RDaily] float NOT NULL,
	[RWeekly] float NOT NULL,
	[RMonthly] float NOT NULL,
	PRIMARY KEY ([CarId])
);

CREATE TABLE AddOn (
	[AId] int NOT NULL IDENTITY,
	[AName] varchar(300) NOT NULL,
	[ARate] float NOT NULL,
	PRIMARY KEY ([AId])
);

CREATE TABLE Vehicle (
	[VId] int NOT NULL IDENTITY,
	[VName] varchar(300) NOT NULL,
	[LicNo] varchar(300) NOT NULL,
	[HubId] int NOT NULL,
	[CarId] int NOT NULL,
	[FuelStatus] bit NOT NULL,
	[ServiceDate] DATE NOT NULL,
	[Available] bit NOT NULL,
	PRIMARY KEY ([VId])
);

CREATE TABLE Customer (
	[CId] int NOT NULL IDENTITY,
	[CName] varchar(300) NOT NULL,
	[CAddress] varchar(300) NOT NULL,
	[Pin] int NOT NULL,
	[PhoneNo] INT NOT NULL,
	[Email] varchar NOT NULL,
	[Role] varchar NOT NULL,
	[CityId] int NOT NULL,
	[StateId] int NOT NULL,
	PRIMARY KEY ([CId])
);

CREATE TABLE Login (
	[UserId] varchar NOT NULL,
	[Password] varchar NOT NULL,
	[Role] varchar NOT NULL,
	PRIMARY KEY ([UserId])
);

CREATE TABLE Booking_hdr (
	[Bid] int NOT NULL IDENTITY,
	[Date] DATE NOT NULL,
	[CId] int NOT NULL,
	[BName] varchar NOT NULL,
	[BAddress] varchar NOT NULL,
	[Pin] int NOT NULL,
	[PhoneNo] INT NOT NULL,
	[Email] varchar NOT NULL,
	[Pick Up Date] DATETIME2(0) NOT NULL,
	[Return Date] DATETIME2(0) NOT NULL,
	[Pick Up Loc] varchar NOT NULL,
	[Return Loc] varchar NOT NULL,
	[CarId] int NOT NULL,
	PRIMARY KEY ([Bid])
);

CREATE TABLE Invoice_hdr (
	[InvId] int NOT NULL,
	[IvcDate] DATE NOT NULL,
	[Bid] int NOT NULL,
	[PickDate] DATE NOT NULL,
	[ReturnDate] DATE NOT NULL,
	[PickLoc] varchar(300) NOT NULL,
	[RetLoc] varchar(300) NOT NULL,
	[CarId] int NOT NULL,
	[VId] int NOT NULL,
	[CarRentAmt] float NOT NULL,
	[AddOnAmt] float NOT NULL,
	[TotalAmt] float NOT NULL
);

CREATE TABLE Booking_dtc (
	[Id] int NOT NULL IDENTITY,
	[Bid] int NOT NULL,
	[Aid] int NOT NULL,
	[Rate] float NOT NULL,
	PRIMARY KEY ([Id])
);

CREATE TABLE Invoice_dtc (
	[Id] int NOT NULL IDENTITY,
	[Bid] int NOT NULL,
	[Aid] int NOT NULL,
	[Rate] int NOT NULL,
	PRIMARY KEY ([Id])
);

ALTER TABLE [City] ADD CONSTRAINT [City_fk0] FOREIGN KEY ([StateId]) REFERENCES State([StateId]);

ALTER TABLE [Airport] ADD CONSTRAINT [Airport_fk0] FOREIGN KEY ([HubId]) REFERENCES Hub([HubId]);

ALTER TABLE [Hub] ADD CONSTRAINT [Hub_fk0] FOREIGN KEY ([StateId]) REFERENCES State([StateId]);

ALTER TABLE [Hub] ADD CONSTRAINT [Hub_fk1] FOREIGN KEY ([CityId]) REFERENCES City([CityId]);

ALTER TABLE [Vehicle] ADD CONSTRAINT [Vehicle_fk0] FOREIGN KEY ([HubId]) REFERENCES Hub([HubId]);

ALTER TABLE [Vehicle] ADD CONSTRAINT [Vehicle_fk1] FOREIGN KEY ([CarId]) REFERENCES CarClass([CarId]);

ALTER TABLE [Customer] ADD CONSTRAINT [Customer_fk0] FOREIGN KEY ([CityId]) REFERENCES City([CityId]);

ALTER TABLE [Customer] ADD CONSTRAINT [Customer_fk1] FOREIGN KEY ([StateId]) REFERENCES State([StateId]);

ALTER TABLE [Booking_hdr] ADD CONSTRAINT [Booking_hdr_fk0] FOREIGN KEY ([CId]) REFERENCES Customer([CId]);

ALTER TABLE [Booking_hdr] ADD CONSTRAINT [Booking_hdr_fk1] FOREIGN KEY ([CarId]) REFERENCES CarClass([CarId]);

ALTER TABLE [Invoice_hdr] ADD CONSTRAINT [Invoice_hdr_fk0] FOREIGN KEY ([Bid]) REFERENCES Booking_hdr([Bid]);

ALTER TABLE [Invoice_hdr] ADD CONSTRAINT [Invoice_hdr_fk1] FOREIGN KEY ([CarId]) REFERENCES CarClass([CarId]);

ALTER TABLE [Invoice_hdr] ADD CONSTRAINT [Invoice_hdr_fk2] FOREIGN KEY ([VId]) REFERENCES Vehicle([VId]);

ALTER TABLE [Booking_dtc] ADD CONSTRAINT [Booking_dtc_fk0] FOREIGN KEY ([Bid]) REFERENCES Booking_hdr([Bid]);

ALTER TABLE [Booking_dtc] ADD CONSTRAINT [Booking_dtc_fk1] FOREIGN KEY ([Aid]) REFERENCES AddOn([AId]);

ALTER TABLE [Invoice_dtc] ADD CONSTRAINT [Invoice_dtc_fk0] FOREIGN KEY ([Bid]) REFERENCES Booking_hdr([Bid]);

ALTER TABLE [Invoice_dtc] ADD CONSTRAINT [Invoice_dtc_fk1] FOREIGN KEY ([Aid]) REFERENCES AddOn([AId]);

