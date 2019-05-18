DROP TABLE IF EXISTS  suppliers   ;
CREATE TABLE    suppliers   
   (
   SupplierID    int          NOT NULL ,
   CompanyName   varchar(40)  NOT NULL ,
   ContactName   varchar(30)  NULL ,
   ContactTitle  varchar(60)  NULL ,
   Address       varchar(60)  NULL ,
   City          varchar(15)  NULL ,
   Region        varchar(15)  NULL ,
   PostalCode    varchar(10)  NULL ,
   Country       varchar(15)  NULL ,
   Phone         varchar(24)  NULL ,
   Fax           varchar(24)  NULL ,
   HomePage      text         NULL ,

   PRIMARY KEY (SupplierID)
   );



INSERT INTO  suppliers  VALUES (1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', '', 'EC1 4SD', 'UK', '(171) 555-2222', '', '');
INSERT INTO  suppliers  VALUES (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', '', '#CAJUN.HTM#');
INSERT INTO  suppliers  VALUES (3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', '');
INSERT INTO  suppliers  VALUES (4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', '', '100', 'Japan', '(03) 3555-5011', '', '');
INSERT INTO  suppliers  VALUES (5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', '', '');
INSERT INTO  suppliers  VALUES (6, 'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', '', '545', 'Japan', '(06) 431-7877', '', 'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
INSERT INTO  suppliers  VALUES (7, 'Pavlova Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', '');
INSERT INTO  suppliers  VALUES (8, 'Specialty Biscuits Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', '', 'M14 GSD', 'UK', '(161) 555-4448', '', '');
INSERT INTO  suppliers  VALUES (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', '', 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', '');
INSERT INTO  suppliers  VALUES (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', '', '5442', 'Brazil', '(11) 555 4640', '', '');
INSERT INTO  suppliers  VALUES (11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', '', '10785', 'Germany', '(010) 9984510', '', '');
INSERT INTO  suppliers  VALUES (12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', '', '60439', 'Germany', '(069) 992755', '', 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#');
INSERT INTO  suppliers  VALUES (13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', '', '27478', 'Germany', '(04721) 8713', '(04721) 8714', '');
INSERT INTO  suppliers  VALUES (14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante 75', 'Ravenna', '', '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#');
INSERT INTO  suppliers  VALUES (15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', '', '1320', 'Norway', '(0)2-953010', '', '');
INSERT INTO  suppliers  VALUES (16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', '', '');
INSERT INTO  suppliers  VALUES (17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', '', 'S-123 45', 'Sweden', '08-123 45 67', '', '');
INSERT INTO  suppliers  VALUES (18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203 Rue des Francs-Bourgeois', 'Paris', '', '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', '');
INSERT INTO  suppliers  VALUES (19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', '');
INSERT INTO  suppliers  VALUES (20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop Suite #402', 'Singapore', '', '0512', 'Singapore', '555-8787', '', '');
INSERT INTO  suppliers  VALUES (21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', '', '2800', 'Denmark', '43844108', '43844115', '');
INSERT INTO  suppliers  VALUES (22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', '', '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', '');
INSERT INTO  suppliers  VALUES (23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', '', '53120', 'Finland', '(953) 10956', '', '');
INSERT INTO  suppliers  VALUES (24, 'G''day Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
INSERT INTO  suppliers  VALUES (25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', '', '');
INSERT INTO  suppliers  VALUES (26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini 153', 'Salerno', '', '84100', 'Italy', '(089) 6547665', '(089) 6547667', '');
INSERT INTO  suppliers  VALUES (27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22 rue H. Voiron', 'Montceau', '', '71300', 'France', '85.57.00.07', '', '');
INSERT INTO  suppliers  VALUES (28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3 rue des Alpes', 'Annecy', '', '74000', 'France', '38.76.98.06', '38.76.98.58', '');
INSERT INTO  suppliers  VALUES (29, 'Forêts dérables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', '');
