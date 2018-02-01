CREATE TABLE [dbo].[FactMonthlyOrders]
(
	[LocationId] INT NOT NULL, 
    [VendorId] INT NOT NULL, 
	[MonthId] INT NOT NULL, 
    [PurchaseAmount] MONEY NOT NULL,
    [OrderCount] INT NOT NULL, 
	CONSTRAINT PK_FactMonthlyOrders_LocationId_VendorId_Month PRIMARY KEY CLUSTERED ([LocationId],[VendorId],[MonthId]),
	CONSTRAINT [FK_FactMonthlyOrders_DimLocation_LocationId] FOREIGN KEY ([LocationId]) REFERENCES [DimLocation]([LocationId]),
	CONSTRAINT [FK_FactMonthlyOrders_DimVendor_VendorId] FOREIGN KEY ([VendorId]) REFERENCES [DimVendor]([VendorId]),
	CONSTRAINT [FK_FactMonthlyOrders_DimMonth_MonthId] FOREIGN KEY ([MonthId]) REFERENCES [DimMonth]([MonthId])
)
