CREATE TABLE [dbo].[FactPurchase]
(
	[LocationId] INT NOT NULL,
	[VendorId] INT NOT NULL, 
	[PurchaseAmount] money NOT NULL,
	CONSTRAINT [FK_Purchase_Location_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [DimLocation]([LocationId]),
	CONSTRAINT [FK_Purchase_Vendor_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [DimVendor]([VendorId])
)
