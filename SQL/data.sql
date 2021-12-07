INSERT INTO "user"
VALUES ('siddhantsingh-1', 'Siddhant Singh');
INSERT INTO "account"
VALUES (1, 'siddhantsingh-1', 0, 150000);
INSERT INTO "account"
VALUES (3, 'siddhantsingh-1', 140000, 60000);

INSERT INTO "user"
VALUES ('proarj', "Arjun Gaur");
INSERT INTO "account"
VALUES(2, 'proarj', 40000, 75000);

INSERT INTO "user"
VALUES('niharika-2206', 'Niharika Upadhayay');
INSERT INTO "account"
VALUES(4, 'niharika-2206', 500, 76500);

--Inserting Stock
INSERT INTO "stock"
VALUES('ITC', 'ITC Limited', 2720000000000, 19.03);
INSERT INTO "instrument"
VALUES(1, 220.70, 'ITC');

INSERT INTO "stock"
VALUES('RELIANCE', 'Reliance Industries Limited', 15900000000000, 30.14);
INSERT INTO "instrument"
VALUES(2, 2382.00, 'RELIANCE');

INSERT INTO "stock"
VALUES('WIPRO', 'Wipro Limited', 3450000000000, 29.06);
INSERT INTO "instrument"
VALUES(3, 633.40, 'WIPRO');

INSERT INTO "stock"
VALUES('TCS', 'Tata Consultancy Services', 13270000000000, 36.44);
INSERT INTO "instrument"
VALUES(4, 3589.90 , 'TCS');

INSERT INTO "stock"
VALUES('INFY', 'Infosys Limited', 7180000000000, 34.76);
INSERT INTO "instrument"
VALUES(5, 1711.45, 'INFY');

INSERT INTO "stock"
VALUES('HDFCBANK', 'HDFC Bank Limited', 8440000000000, 24.75);
INSERT INTO "instrument"
VALUES(6, 1524.65, 'HDFCBANK');

INSERT INTO "stock"
VALUES('AXISBANK', 'Axis Bank Limited', 2110000000000, 21.07);
INSERT INTO "instrument"
VALUES(7, 686.90, 'AXISBANK');

INSERT INTO "stock"
VALUES('SBIN', 'State Bank of India', 4250000000000, 14.85);
INSERT INTO "instrument"
VALUES(8, 476.85, 'SBIN');

INSERT INTO "stock"
VALUES('LT', 'Larsen & Toubro Ltd', 2530000000000, 28.84);
INSERT INTO "instrument"
VALUES(9, 220.70, 'ITC');

INSERT INTO "stock"
VALUES('TATAMOTORS', 'Tata Motors Limited', 1730000000000, -11.62);
INSERT INTO "instrument"
VALUES(10, 482.30, 'TATAMOTORS');

--Inserting ETFs
INSERT INTO "etf"
VALUES('INIFTY', 'ICICI Prudential AMC', 'NIFTY 50 Index', '2013-03-20');
INSERT INTO "instrument"("instrument_id", "quote", "etf_ticker")
VALUES(11, 184.87, 'INIFTY');

INSERT INTO "etf"
VALUES('MOM50', 'Motilal Oswal AMC', 'NIFTY 50 Index', '2010-07-28');
INSERT INTO "instrument"("instrument_id", "quote", "etf_ticker")
VALUES(12, 171.04, 'MOM50');

INSERT INTO "etf"
VALUES('KOTAKPSUBK', 'Kotak AMC', 'NIFTY PSU BANK', '2007-11-08');
INSERT INTO "instrument"("instrument_id", "quote", "etf_ticker")
VALUES(13, 260.50, 'KOTAKPSUBK');

INSERT INTO "etf"
VALUES('MOM100', 'Motilal Oswal AMC', '	NIFTY Midcap 100', '2011-01-31');
INSERT INTO "instrument"("instrument_id", "quote", "etf_ticker")
VALUES(14, 31.78, 'MOM100');