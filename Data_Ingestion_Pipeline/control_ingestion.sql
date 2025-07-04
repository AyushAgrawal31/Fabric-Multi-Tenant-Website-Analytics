CREATE TABLE [Warehouse].[dbo].[Control_Ingestion]
(
	[table_name] [varchar](255) NOT NULL,
	[last_run_timestamp] [datetime2](3) NOT NULL
)
GO
