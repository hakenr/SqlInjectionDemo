/*************************************************************************************/
/* Pøíprava situace																	 */
/*************************************************************************************/
USE SqlDemo
DROP TABLE Ucet
GO

-- Primitivní tabulka ála bankovní úèet
CREATE TABLE Ucet
(
	UcetID int IDENTITY(1,1) NOT NULL,
	VlastnikID int NOT NULL,
	Nazev nvarchar(50),
	Zustatek money NOT NULL CONSTRAINT DF_Ucet_Zustatek  DEFAULT (0),
	CONSTRAINT PK_Ucet PRIMARY KEY CLUSTERED (UcetID ASC) 
) ON [PRIMARY]
GO


-- Založení nìkolika ukázkových úètù
DELETE FROM Ucet
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(1, 'Úèet 1', 10)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(2, 'Úèet 2', 20)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(3, 'Úèet 3', 30)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(4, 'Úèet 4', 40)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(5, 'Úèet 5', 50)
GO

-- Kontrolní výstup
SELECT * FROM Ucet
GO