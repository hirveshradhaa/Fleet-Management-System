USE [Fleet]
GO

INSERT INTO [dbo].[Vehicle]
           ([VName]
           ,[LicNo]
           ,[HubId]
           ,[CarId]
           ,[FuelStatus]
           ,[ServiceDate]
           ,[Available])
     VALUES
           ('Hyundai Grand i10','MH02-145',9,1,1,'2018-06-25',1),
		    ('Hyundai Creta','MH02-146',9,2,1,'2018-07-20',1),
			 ('Honda-City','MH02-147',9,3,1,'2018-06-21',1),
			  ('Audi-Q8','MH02-148',9,4,1,'2018-05-25',1);

GO


