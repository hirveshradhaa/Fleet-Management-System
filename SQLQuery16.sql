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
           ('Ford Figo','HE1345A',9,1,1,2018-05-12,1),
		   ('Maruti Swift','TH1554K',27,1,1,2018-06-20,1),
		   ('Tata Tiago','PT6354T',18,1,1,2018-02-24,1);
		   
GO


