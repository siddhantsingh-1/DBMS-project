INSERT INTO user VALUES ('siddhantsingh-1', 'Siddhant Singh');
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES (1, 'siddhantsingh-1', 0, 150000);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES (3, 'siddhantsingh-1', 140000, 60000);

INSERT INTO user VALUES ('proarj', "Arjun Gaur");
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES(2, 'proarj', 40000, 75000);

INSERT INTO user VALUES('niharika-2206', 'Niharika Upadhayay');
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES(4, 'niharika-2206', 500, 76500);

--Inserting Stock
INSERT INTO instrument(instrument_id, quote) VALUES(1, 220.70);
INSERT INTO stock VALUES('ITC',1, 'ITC Limited', 2720000000000, 19.03);


INSERT INTO instrument(instrument_id, quote) VALUES(2, 2382.00);
INSERT INTO stock VALUES('RELIANCE',2, 'Reliance Industries Limited', 15900000000000, 30.14);

INSERT INTO instrument(instrument_id, quote) VALUES(3, 633.40);
INSERT INTO stock VALUES('WIPRO',3, 'Wipro Limited', 3450000000000, 29.06);

INSERT INTO instrument(instrument_id, quote) VALUES(4, 3589.90);
INSERT INTO stock VALUES('TCS',4,'Tata Consultancy Services', 13270000000000, 36.44);

INSERT INTO instrument(instrument_id, quote) VALUES(5, 1711.45);
INSERT INTO stock VALUES('INFY',5, 'Infosys Limited', 7180000000000, 34.76);

INSERT INTO instrument(instrument_id, quote) VALUES(6, 1524.65);
INSERT INTO stock VALUES('HDFCBANK',6, 'HDFC Bank Limited', 8440000000000, 24.75);

INSERT INTO instrument(instrument_id, quote) VALUES(7, 686.90);
INSERT INTO stock VALUES('AXISBANK',7, 'Axis Bank Limited', 2110000000000, 21.07);

INSERT INTO instrument(instrument_id, quote) VALUES(8, 476.85);
INSERT INTO stock VALUES('SBIN',8, 'State Bank of India', 4250000000000, 14.85);

INSERT INTO instrument(instrument_id, quote) VALUES(9, 220.70);
INSERT INTO stock VALUES('LT',9, 'Larsen & Toubro Ltd', 2530000000000, 28.84);

INSERT INTO instrument(instrument_id, quote) VALUES(10, 482.30);
INSERT INTO stock VALUES('TATAMOTORS',10, 'Tata Motors Limited', 1730000000000, -11.62);


--Inserting ETFs
INSERT INTO instrument(instrument_id, quote) VALUES(11, 184.87);
INSERT INTO etf VALUES('INIFTY',11, 'ICICI Prudential AMC', 'NIFTY 50 Index', '2013-03-20');

INSERT INTO instrument(instrument_id, quote) VALUES(12, 171.04);
INSERT INTO etf VALUES('MOM50',12, 'Motilal Oswal AMC', 'NIFTY 50 Index', '2010-07-28');



INSERT INTO instrument(instrument_id, quote) VALUES(13, 260.50);
INSERT INTO etf VALUES('KOTAKPSUBK',13, 'Kotak AMC', 'NIFTY PSU BANK', '2007-11-08');


INSERT INTO instrument(instrument_id, quote) VALUES(14, 31.78);
INSERT INTO etf VALUES('MOM100',14, 'Motilal Oswal AMC', '	NIFTY Midcap 100', '2011-01-31');
