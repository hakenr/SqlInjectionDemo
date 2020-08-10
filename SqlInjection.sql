/*************************************************************************************/
/* P��prava situace																	 */
/*************************************************************************************/
USE SqlDemo
DROP TABLE Ucet
GO

-- Primitivn� tabulka �la bankovn� ��et
CREATE TABLE Ucet
(
	UcetID int IDENTITY(1,1) NOT NULL,
	VlastnikID int NOT NULL,
	Nazev nvarchar(50),
	Zustatek money NOT NULL CONSTRAINT DF_Ucet_Zustatek  DEFAULT (0),
	CONSTRAINT PK_Ucet PRIMARY KEY CLUSTERED (UcetID ASC) 
) ON [PRIMARY]
GO


-- Zalo�en� n�kolika uk�zkov�ch ��t�
DELETE FROM Ucet
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(1, '��et 1', 10)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(2, '��et 2', 20)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(3, '��et 3', 30)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(4, '��et 4', 40)
INSERT INTO Ucet(VlastnikID, Nazev, Zustatek) VALUES(5, '��et 5', 50)
GO

-- Kontroln� v�stup
SELECT * FROM Ucet
GO