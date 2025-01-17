USE [DB_MS_SQL]
GO
/****** Object:  Trigger [dbo].[PopulateCostaRicaDB]    Script Date: 19/1/2021 23:13:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER   TRIGGER [dbo].[PopulateCostaRicaDB]
   ON  [DB_MS_SQL].[dbo].[VENTAS_PROGRA2]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [BD_COSTA_RICA].[dbo].[VENTAS_CR] 
	SELECT	 I.Factura
			,I.Fecha
			,I.FechaVencimiento
			,I.Cliente
			,I.Producto
			,I.Cantidad
			,I.Moneda
			,I.Precio
			,I.Total
			,I.Almacen
			,I.Vendedor
			,I.TotalUSD
			,I.Impuesto
			,I.ImpuestoUSD
			,I.TipoDeCambio
			,I.Ganancia
			,I.GananciaUSD
	FROM inserted I
	WHERE I.Moneda = 'CRC'
END


