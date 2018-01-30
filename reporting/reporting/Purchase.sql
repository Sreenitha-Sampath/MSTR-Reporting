CREATE TABLE [dbo].[Purchase]
(
	[LocationID] INT NOT NULL
    CONSTRAINT [FK_Purchase_Location] FOREIGN KEY ([LocationID]) REFERENCES [Location]([LocationID]),
	[VendorID] INT NOT NULL 
    CONSTRAINT [FK_Purchase_Vendor] FOREIGN KEY ([VendorID]) REFERENCES [Vendor]([VendorID]),
	[Amount] money NOT NULL

)
