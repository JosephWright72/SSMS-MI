USE MI_STAGING
GO

IF EXISTS(select * FROM sys.tables where name = 'ProductGroupStructure')
	DROP TABLE dbo.ProductGroupStructure
GO

CREATE TABLE ProductGroupStructure (Keynote VARCHAR(MAX), ID2 VARCHAR(MAX), Level2 VARCHAR(MAX),ID3 VARCHAR(MAX),Level3 VARCHAR(MAX))
GO

DELETE FROM ProductGroupStructure
GO

INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.1','1','Cylinders','1.01','Cylinders - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.2','1','Cylinders','1.02','Cylinders - Electromechanical key based')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.3','1','Cylinders','1.03','Cylinders - Electro Mechanical accessories')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.4','1','Cylinders','1.04','Cylinders - Automotive, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.5','1','Cylinders','1.05','Cylinders - Automotive, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.6','1','Cylinders','1.06','Cylinders - Spare keys and key blanks mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('1.7','1','Cylinders','1.07','Cylinders - Spare keys and key blanks elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.1','2','Locksets','2.01','Locksets - mortise Mechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.2','2','Locksets','2.02','Locksets - Locksets / Escutcheons mortise Electromechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.3','2','Locksets','2.03','Locksets - Rim, Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.4','2','Locksets','2.04','Locksets - Rim, Electro Mechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.5','2','Locksets','2.05','Locksets - Mechanical, Cylindrical & Tubular')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.6','2','Locksets','2.06','Locksets - Electro Mechanical, Cylindrical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.7','2','Locksets','2.07','Locksets - Auxiliary Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.8','2','Locksets','2.08','Locksets - Electro Mechanical, Auxiliary Locks ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.9','2','Locksets','2.09','Locksets - All other mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('2.10','2','Locksets','2.1','Locksets - All other elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.1','3','Lock Cases','3.01','Lock Cases - Single Point Mechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.2','3','Lock Cases','3.02','Lock Cases - Multipoint Mechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.3','3','Lock Cases','3.03','Lock Cases - Single Point Electromechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.4','3','Lock Cases','3.04','Lock Cases - Multipoint Electromechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.5','3','Lock Cases','3.05','Rim Locks Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.6','3','Lock Cases','3.06','Rim Locks Electromechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.7','3','Lock Cases','3.07','Lock Cases - Mechanical, Auxiliary Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('3.8','3','Lock Cases','3.08','Lock Cases - Electro Mechanical, auxiliary Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('4.1','4','Padlocks','4.01','Pad Locks - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('4.2','4','Padlocks','4.02','Pad Locks - Electromechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('5.1','5','Camlocks','5.01','Camlocks/Industrial Locks - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('5.2','5','Camlocks','5.02','Camlocks/Industrial Locks - Electromechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.1','6','Door Closers','6.01','Door Closers - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('.2','6','Door Closers','6.02','Door Closers - Electromechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.3','6','Door Closers','6.03','Door Closers - Coordinators mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.4','6','Door Closers','6.04','Door Closers - Coordinators elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.5','6','Door Closers','6.05','Door Closers - Accessories mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.6','6','Door Closers','6.06','Door Closers - Accessories elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('7.1','7','Lock Trims','7.01','Lock Trims - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('7.2','7','Lock Trims','7.02','Lock Trims - Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('7.3','7','Lock Trims','7.03','Lock Trims - Handles, Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('8.1','8','Panic and Exit Devices','8.01','Panic and Exit Devices - Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('8.2','8','Panic and Exit Devices','8.02','Panic and Exit Devices - Electromechanical ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.1','9','Architectural and Accessory  Hardware','9.01','Architectural Hardware - Handles Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.2','9','Architectural and Accessory  Hardware','9.02','Architectural Hardware - Handles Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.3','9','Architectural and Accessory  Hardware','9.03','Architectural Hardware - Hinges & Pivots, Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.4','9','Architectural and Accessory  Hardware','9.04','Architectural Hardware - Hinges & Pivots, Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.5','9','Architectural and Accessory  Hardware','9.05','Accessory Hardware - Cabinet Hardware, Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('','9','Architectural and Accessory  Hardware','9.06','Accessory Hardware Cabinet Locks, Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.7','9','Architectural and Accessory  Hardware','9.07','Accessory Hardware - Bathroom / Lavatory mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.8','9','Architectural and Accessory  Hardware','9.08','Accessory Hardware - Gaskets, Thresholds mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.9','9','Architectural and Accessory  Hardware','9.09','Architectural & Accessory Hardware - Other, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('9.10','9','Architectural and Accessory  Hardware','9.1','Architectural & Accessory Hardware - Other, elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('10.1','10','Strikes, Magnetic Locks and Bolts','10.01','Electric Strikes')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('10.2','10','Strikes, Magnetic Locks and Bolts','10.02','Magnetic Locks and Bolts')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('10.3','10','Strikes, Magnetic Locks and Bolts','10.03','Electro Magnetic Hold Open Devices')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.1','11','Identity and Access Solutions','11.01','Cards')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.2','11','Identity and Access Solutions','11.02','Readers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.3','11','Identity and Access Solutions','11.03','Network Devices')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.4','11','Identity and Access Solutions','11.04','Printers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.5','11','Identity and Access Solutions','11.05','Printer Supplies')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.6','11','Identity and Access Solutions','11.06','Software')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.7','11','Identity and Access Solutions','11.07','Inlays')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.8','11','Identity and Access Solutions','11.08','Transponders')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.9','11','Identity and Access Solutions','11.09','Other products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.10','11','Identity and Access Solutions','11.1','Electronic Lock Cases, Reader included')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.11','11','Identity and Access Solutions','11.11','Electronic Cylinder, Reader included')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.12','11','Identity and Access Solutions','11.12','Electronic Lock Trim / Escutcheon, Reader included')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.13','11','Identity and Access Solutions','11.13','Electronic Cabinet Lock, Reader included')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.14','11','Identity and Access Solutions','11.14','Electronic Cable Lock, Reader included')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.15','11','Identity and Access Solutions','11.15','Handles, Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.16','11','Identity and Access Solutions','11.16','Keypads')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.17','11','Identity and Access Solutions','11.17','Credentials, Other')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.18','11','Identity and Access Solutions','11.18','Controllers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.19','11','Identity and Access Solutions','11.19','EAC Systems')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.20','11','Identity and Access Solutions','11.2','IAM Services')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.21','11','Identity and Access Solutions','11.21','Product Components')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.22','11','Identity and Access Solutions','11.22','Managed Services')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.23','11','Identity and Access Solutions','11.23','Strong Authentification Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.24','11','Identity and Access Solutions','11.24','Security Client Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.25','11','Identity and Access Solutions','11.25','Credential Management')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('11.26','11','Identity and Access Solutions','11.26','Biometrics/Imaging Solutions')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.1','12','Security doors and fittings','12.01','Residential Metal Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.2','12','Security doors and fittings','12.02','Commercial Metal Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.3','12','Security doors and fittings','12.03','Fire Rated Metal Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.4','12','Security doors and fittings','12.04','Wood/Other Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.5','12','Security doors and fittings','12.05','Residential Metal Doors electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.6','12','Security doors and fittings','12.06','Commercial Metal Doors electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.7','12','Security doors and fittings','12.07','Fire Rated Metal Doors electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.8','12','Security doors and fittings','12.08','Wood/Other Doors electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.9','12','Security doors and fittings','12.09','Wood, Fire Rated Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.10','12','Security doors and fittings','12.1','Plastic Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.11','12','Security doors and fittings','12.11','Plastic doors, electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.12','12','Security doors and fittings','12.12','Glass Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.13','12','Security doors and fittings','12.13','Aluminum Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.14','12','Security doors and fittings','12.14','Aluminum Doors, Fire Rated')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.15','12','Security doors and fittings','12.15','Aluminum Doors, electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.16','12','Security doors and fittings','12.16','Special Purpose Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.17','12','Security doors and fittings','12.17','Special Purpose Doors, electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.18','12','Security doors and fittings','12.18','Door Frames, Steel')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.19','12','Security doors and fittings','12.19','Door Frames, Aluminum')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.20','12','Security doors and fittings','12.2','Door Frames, Wood')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.21','12','Security doors and fittings','12.21','Curtain Walls')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.22','12','Security doors and fittings','12.22','Doors -Gaskets')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.23','12','Security doors and fittings','12.23','Doors - Thresholds')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.24','12','Security doors and fittings','12.24','Roller Shutters')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.25','12','Security doors and fittings','12.25','Roller Shutters, electrified (elmech)')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.26','12','Security doors and fittings','12.26','Doors - Other Components, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('12.27','12','Security doors and fittings','12.27','Doors - Other Components, elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.1','13','Window Locks and Systems','13.01','Window Locks and Systems, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.2','13','Window Locks and Systems','13.02','Window Locks and Systems, elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.3','13','Window Locks and Systems','13.03','Windows Locks - Espagnolettes')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.4','13','Window Locks and Systems','13.04','Windows - Hinges')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.5','13','Window Locks and Systems','13.05','Windows - Handles Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('13.6','13','Window Locks and Systems','13.06','Windows - Handles Electro Mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('14.1','14','Hospitality products','14.01','Hospitality locksets ')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('14.2','14','Hospitality products','14.02','Hospitality readers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('14.3','14','Hospitality products','14.03','Safes - Hospitality')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('14.4','14','Hospitality products','14.04','Energy Management Systems')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('15.1','15','Glass Hardware','15.01','Glass Hardware')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.1','16','Residential Access Control','16.01','Residential Access Control - Electro Mechanical Auxiliary Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.2','16','Residential Access Control','16.02','Residential Access Control - Electro Mechanical and Motorized Cylinders')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.3','16','Residential Access Control','16.03','Residential Access Control - Cylindrical Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.4','16','Residential Access Control','16.04','Residential Access Control - Electro Mechanical Locks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.5','16','Residential Access Control','16.05','Residential Access Control - Electro Mechanical Escutcheons')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.6','16','Residential Access Control','16.06','Residential Access Control - Electromechanical Locks, Interconnected')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.7','16','Residential Access Control','16.07','Residential Access Control - Electro Mechanical Trim')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('16.8','16','Residential Access Control','16.08','Residential Access Control - Accessories')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('17.1','17','Residential Electronic security','17.01','Residential Electronic security - Wireless alarm systems')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('17.2','17','Residential Electronic security','17.02','Residential Electronic security - CCTV cameras including Digital Door Viewers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('17.3','17','Residential Electronic security','17.03','Residential Electronic security - Smart Home Gateways')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('17.4','17','Residential Electronic security','17.04','Residential Electronic security - Residential safes')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('17.5','17','Residential Electronic security','17.05','Residential Electronic security - Other Electronic Security Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('18.1','18','Industrial Locks','18.01','Industrial Locks - Special Applications, mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('18.2','18','Industrial Locks','18.02','Industrial Locks - Special Applications, elmech')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('19.1','19','Electronic Accessories','19.01','Electronic Accessories - Power Supplies')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('19.2','19','Electronic Accessories','19.02','Electronic Accessories - Power Transfers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('19.3','19','Electronic Accessories','19.03','Electronic Accessories - Power Transfers, Contactless')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('19.4','19','Electronic Accessories','19.04','Electronic Accessories - Other Accessories')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.1','20','Fence Systems','20.01','Fence Systems - Residential')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.2','20','Fence Systems','20.02','Fence Systems - Commercial')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.3','20','Fence Systems','20.03','Fence Systems - Industrial')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.4','20','Fence Systems','20.04','Fence Systems - High Security')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.5','20','Fence Systems','20.05','Fence Systems - Gates')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('20.6','20','Fence Systems','20.06','Fence Systems - Accessories')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('21.1','21','Pedestrian Doors Entrance Systems','21.01','Door Automation')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('21.1.1','21','Pedestrian Doors Entrance Systems','21.01.01','Sliding Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('21.1.2','21','Pedestrian Doors Entrance Systems','21.01.02','Swing Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('21.2','21','Pedestrian Doors Entrance Systems','21.02','Revolving Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('21.3','21','Pedestrian Doors Entrance Systems','21.03','Other Pedestrian Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.1','22','Industrial Products Entrance Systems','22.01','Industrial/Commercial Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.1.1','22','Industrial Products Entrance Systems','22.01.01','Framed Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.1.2','22','Industrial Products Entrance Systems','22.01.02','Panel Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.1.3','22','Industrial Products Entrance Systems','22.01.03','Folding Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.1.4','22','Industrial Products Entrance Systems','22.01.04','Uninsulated and other Ind. Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2','22','Industrial Products Entrance Systems','22.02','Docking')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.1','22','Industrial Products Entrance Systems','22.02.01','Inflatable Shelters')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.2','22','Industrial Products Entrance Systems','22.02.02','Mechanical Shelters')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.3','22','Industrial Products Entrance Systems','22.02.03','Powered Levelers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.4','22','Industrial Products Entrance Systems','22.02.04','Mechanical Levelers')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.5','22','Industrial Products Entrance Systems','22.02.05','Restraints')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.6','22','Industrial Products Entrance Systems','22.02.06','Lift Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.7','22','Industrial Products Entrance Systems','22.02.07','Bridges and Plates')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.8','22','Industrial Products Entrance Systems','22.02.08','Loading Houses')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.9','22','Industrial Products Entrance Systems','22.02.09','Dock Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.10','22','Industrial Products Entrance Systems','22.02.10','Monitoring Systems')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.2.11','22','Industrial Products Entrance Systems','22.02.11','Other Docking Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.3','22','Industrial Products Entrance Systems','22.03','High Performance Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.3.1','22','Industrial Products Entrance Systems','22.03.01','High Performance  Doors Fabric')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.3.2','22','Industrial Products Entrance Systems','22.03.02','High Performance Doors Rubber')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.3.3','22','Industrial Products Entrance Systems','22.03.03','High Performance Doors Rigid')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.3.4','22','Industrial Products Entrance Systems','22.03.04','High Performance Doors Other')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.4','22','Industrial Products Entrance Systems','22.04','Megadoor')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.4.1','22','Industrial Products Entrance Systems','22.04.01','Megadoor Standard')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.4.2','22','Industrial Products Entrance Systems','22.04.02','Megadoor Projects')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.5','22','Industrial Products Entrance Systems','22.05','Other Industrial Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.5.1','22','Industrial Products Entrance Systems','22.05.01','Fans')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('22.5.2','22','Industrial Products Entrance Systems','22.05.02','Roller Shutters')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('.5.3','22','Industrial Products Entrance Systems','22.05.03','Other Industrial Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('23.1','23','Residential Products Entrance Systems','23.01','Residential Garage Sectional Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('23.1.1','23','Residential Products Entrance Systems','23.01.01','Insulated Garage Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('23.1.2','23','Residential Products Entrance Systems','23.01.02','Uninsulated Garage Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('23.2','23','Residential Products Entrance Systems','23.02','Residential Garage One Piece Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('23.3','23','Residential Products Entrance Systems','23.03','Other Residential Products')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.1','24','Components and Hardware Entrance Systems','24.01','Springs')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.2','24','Components and Hardware Entrance Systems','24.02','Tracks')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.3','24','Components and Hardware Entrance Systems','24.03','Reinforcements')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.4','24','Components and Hardware Entrance Systems','24.04','Windows/Inserts')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.5','24','Components and Hardware Entrance Systems','24.05','Panels')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.6','24','Components and Hardware Entrance Systems','24.06','Hardware Kits')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.7','24','Components and Hardware Entrance Systems','24.07','Sliding Gear')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('24.8','24','Components and Hardware Entrance Systems','24.08','Other Components and Hardware')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.1','25','Automation Entrance Systems','25.01','Residential Door Operators')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.2','25','Automation Entrance Systems','25.02','Industrial/Commercial Door Operators')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.3','25','Automation Entrance Systems','25.03','Gate Operators')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.4','25','Automation Entrance Systems','25.04','Barriers/Barrier operators')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.5','25','Automation Entrance Systems','25.05','Accessories')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('25.6','25','Automation Entrance Systems','25.06','Other Automation')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.1','26','Service','26.01','Contracts')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('6.2','26','Service','26.02','Labor Sales')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.3','26','Service','26.03','Spares')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.4','26','Service','26.04','Upgrades and Modernization Kits')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.5','26','Service','26.05','Breakdowns Contract Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.6','26','Service','26.06','Breakdowns Non Contract Doors')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.7','26','Service','26.07','e-maintenance Contracts')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('26.8','26','Service','26.08','Other Service')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('27.1','27','Other','27.01','Other - Other products mechanical')
GO
INSERT INTO ProductGroupStructure(Keynote,ID2,Level2,ID3,Level3)
VALUES('27.2','27','Other','27.02','Other - Other products electro mechanical')
GO

ALTER TABLE ProductGroupStructure
ADD ProductType VARCHAR(MAX)
GO

UPDATE PGS
SET PGS.ProductType = P.ProductType
FROM ProductGroupStructure PGS
JOIN Products P ON PGS.Keynote = P.Keynote
GO




