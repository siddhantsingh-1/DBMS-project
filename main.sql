--Creating Tables

CREATE TABLE user_info(
    username varchar(20) PRIMARY KEY,
    name varchar(30)
    );

CREATE TABLE account(
    account_id varchar(13) PRIMARY KEY,
    username varchar(20),
    cash_balance bigint,
    investment_value bigint,
    total_value bigint GENERATED ALWAYS AS (cash_balance + investment_value) STORED
    FOREIGN KEY(username) REFERENCES user_info(username) ON DELETE SET NULL
    );


CREATE TABLE instrument(
    symbol varchar(10) PRIMARY KEY,
    quote int
);


CREATE TABLE trade(
    ID int PRIMARY KEY,
    symbol varchar(10),
    account_id varchar(13),
    shares int,
    price int,
    amount bigint GENERATED ALWAYS AS(shares*price) STORED,
    date date,
    FOREIGN KEY(account_id) REFERENCES account(account_id) ON DELETE SET NULL,
    FOREIGN KEY(symbol) REFERENCES instrument(symbol) ON DELETE SET NULL
);

CREATE TABLE buy(
    ID int PRIMARY KEY
);

CREATE TABLE sell(
    ID int PRIMARY KEY
);

CREATE TABLE owns(
    account_id varchar(13) REFERENCES account(account_id),
    instrument_symbol varchar(10) REFERENCES instrument(symbol),
    quantity int 
);

CREATE TABLE stock(
    symbol varchar(10) PRIMARY KEY
);

CREATE TABLE mutual_fund(
    symbol varchar(10) PRIMARY KEY
);

CREATE TABLE etf(
    symbol varchar(10) PRIMARY KEY
);

--Inserting values

INSERT INTO user_info(username,name) VALUES ('wwinckworth0','Wallis Winckworth');
INSERT INTO user_info(username,name) VALUES ('tmayers1','Torrey Mayers');
INSERT INTO user_info(username,name) VALUES ('arussen2','Alwin Russen');
INSERT INTO user_info(username,name) VALUES ('kbuttler3','Kathye Buttler');
INSERT INTO user_info(username,name) VALUES ('dallonby4','Darren Allonby');
INSERT INTO user_info(username,name) VALUES ('jhowsin5','Joell Howsin');
INSERT INTO user_info(username,name) VALUES ('kmanners6','Kinny Manners');
INSERT INTO user_info(username,name) VALUES ('flonie7','Freda Lonie');
INSERT INTO user_info(username,name) VALUES ('aliccardi8','Alan Liccardi');
INSERT INTO user_info(username,name) VALUES ('jparlor9','Josi Parlor');
INSERT INTO user_info(username,name) VALUES ('ocrusa','Orbadiah Crus');
INSERT INTO user_info(username,name) VALUES ('aarmigerb','Adelbert Armiger');
INSERT INTO user_info(username,name) VALUES ('tdavidofskic','Tam Davidofski');
INSERT INTO user_info(username,name) VALUES ('lcrevaghd','Leif Crevagh');
INSERT INTO user_info(username,name) VALUES ('gastlette','Gunar Astlett');
INSERT INTO user_info(username,name) VALUES ('omacgillivrayf','Orin MacGillivray');
INSERT INTO user_info(username,name) VALUES ('hfayermang','Hannis Fayerman');
INSERT INTO user_info(username,name) VALUES ('dhatherleyh','Denna Hatherley');
INSERT INTO user_info(username,name) VALUES ('vrandlesi','Valida Randles');
INSERT INTO user_info(username,name) VALUES ('nbordissj','Nell Bordiss');

INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('950-iuvro-338','vrandlesi',22719,929001);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('178-mjjjm-565','jhowsin5',514636,415302);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('387-jyfpu-157','wwinckworth0',429060,48971);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('822-sxgot-451','dhatherleyh',316883,894510);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('862-coqwz-635','arussen2',314875,301596);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('075-iulit-689','gastlette',664172,611483);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('418-ylhld-122','aarmigerb',518407,555551);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('877-jjfke-429','flonie7',260257,174225);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('597-yxndj-063','tdavidofskic',923199,157449);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('467-lqpya-330','jparlor9',405819,134861);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('264-ziidg-337','tmayers1',431190,191921);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('952-ywthq-176','wwinckworth0',711858,793464);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('495-sgiel-831','aliccardi8',813796,914350);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('871-wcxji-438','arussen2',436038,949986);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('101-liorh-628','dhatherleyh',458246,697607);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('693-iembx-947','vrandlesi',200714,48501);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('594-onhzg-252','tmayers1',10503,961969);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('898-wnuan-793','hfayermang',905863,779694);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('798-nfuap-603','dallonby4',321407,581710);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('350-zmqwa-889','aliccardi8',980699,779711);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('378-gotsb-518','wwinckworth0',117665,599357);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('429-fazic-743','gastlette',910492,949677);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('302-kkeln-490','tdavidofskic',382130,807852);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('960-ztqge-913','jhowsin5',252330,390113);
INSERT INTO account(account_id,username,cash_balance,investment_value) VALUES ('734-xfpls-018','arussen2',671431,917730);

INSERT INTO instrument(symbol,quote) VALUES ('TNGJ',1249);
INSERT INTO instrument(symbol,quote) VALUES ('TVNZ',1769);
INSERT INTO instrument(symbol,quote) VALUES ('FDBS',1691);
INSERT INTO instrument(symbol,quote) VALUES ('ZZYV',1728);
INSERT INTO instrument(symbol,quote) VALUES ('JJUL',217);
INSERT INTO instrument(symbol,quote) VALUES ('AFPZ',1969);
INSERT INTO instrument(symbol,quote) VALUES ('XPYQ',1749);
INSERT INTO instrument(symbol,quote) VALUES ('EELY',436);
INSERT INTO instrument(symbol,quote) VALUES ('LKMZ',2000);
INSERT INTO instrument(symbol,quote) VALUES ('GBDZ',896);
INSERT INTO instrument(symbol,quote) VALUES ('OZMC',1612);
INSERT INTO instrument(symbol,quote) VALUES ('WBRR',1797);
INSERT INTO instrument(symbol,quote) VALUES ('BTBS',1119);
INSERT INTO instrument(symbol,quote) VALUES ('RFWT',808);
INSERT INTO instrument(symbol,quote) VALUES ('BIWN',1528);
INSERT INTO instrument(symbol,quote) VALUES ('SHQN',1297);
INSERT INTO instrument(symbol,quote) VALUES ('DZFK',333);
INSERT INTO instrument(symbol,quote) VALUES ('NQIM',708);
INSERT INTO instrument(symbol,quote) VALUES ('IHNK',1139);
INSERT INTO instrument(symbol,quote) VALUES ('JAJA',1779);
INSERT INTO instrument(symbol,quote) VALUES ('COTF',882);
INSERT INTO instrument(symbol,quote) VALUES ('VMXE',33);
INSERT INTO instrument(symbol,quote) VALUES ('GELA',995);
INSERT INTO instrument(symbol,quote) VALUES ('PPMC',1660);
INSERT INTO instrument(symbol,quote) VALUES ('UTIY',709);
INSERT INTO instrument(symbol,quote) VALUES ('KLJN',414);
INSERT INTO instrument(symbol,quote) VALUES ('UABW',167);
INSERT INTO instrument(symbol,quote) VALUES ('DQBR',922);
INSERT INTO instrument(symbol,quote) VALUES ('UKLO',406);
INSERT INTO instrument(symbol,quote) VALUES ('YJAN',964);
INSERT INTO instrument(symbol,quote) VALUES ('EWCE',936);
INSERT INTO instrument(symbol,quote) VALUES ('HUZW',1880);
INSERT INTO instrument(symbol,quote) VALUES ('SDKQ',712);
INSERT INTO instrument(symbol,quote) VALUES ('FXIM',1655);
INSERT INTO instrument(symbol,quote) VALUES ('IMYC',1376);
INSERT INTO instrument(symbol,quote) VALUES ('EGES',1172);
INSERT INTO instrument(symbol,quote) VALUES ('PEPL',208);
INSERT INTO instrument(symbol,quote) VALUES ('SYST',256);
INSERT INTO instrument(symbol,quote) VALUES ('UBMI',1652);
INSERT INTO instrument(symbol,quote) VALUES ('KQSB',909);
INSERT INTO instrument(symbol,quote) VALUES ('FFIB',1120);
INSERT INTO instrument(symbol,quote) VALUES ('HGFX',664);
INSERT INTO instrument(symbol,quote) VALUES ('BEGP',310);
INSERT INTO instrument(symbol,quote) VALUES ('FZVQ',1696);
INSERT INTO instrument(symbol,quote) VALUES ('FMYM',744);
INSERT INTO instrument(symbol,quote) VALUES ('EXSR',876);
INSERT INTO instrument(symbol,quote) VALUES ('ZODT',1167);
INSERT INTO instrument(symbol,quote) VALUES ('JGJE',358);
INSERT INTO instrument(symbol,quote) VALUES ('EOTW',560);
INSERT INTO instrument(symbol,quote) VALUES ('YKVM',641);
INSERT INTO instrument(symbol,quote) VALUES ('WUWA',1682);
INSERT INTO instrument(symbol,quote) VALUES ('EZHY',1826);
INSERT INTO instrument(symbol,quote) VALUES ('VDVV',546);
INSERT INTO instrument(symbol,quote) VALUES ('UPSM',1969);
INSERT INTO instrument(symbol,quote) VALUES ('CIKM',1960);
INSERT INTO instrument(symbol,quote) VALUES ('KPBF',1963);
INSERT INTO instrument(symbol,quote) VALUES ('RLOR',467);
INSERT INTO instrument(symbol,quote) VALUES ('FGFD',1960);
INSERT INTO instrument(symbol,quote) VALUES ('EGWQ',1855);
INSERT INTO instrument(symbol,quote) VALUES ('DQDI',1522);
INSERT INTO instrument(symbol,quote) VALUES ('FJHG',605);
INSERT INTO instrument(symbol,quote) VALUES ('RIYO',521);
INSERT INTO instrument(symbol,quote) VALUES ('BLBR',1234);
INSERT INTO instrument(symbol,quote) VALUES ('GIVG',1784);
INSERT INTO instrument(symbol,quote) VALUES ('GTPA',334);
INSERT INTO instrument(symbol,quote) VALUES ('JPLB',74);
INSERT INTO instrument(symbol,quote) VALUES ('JACX',334);
INSERT INTO instrument(symbol,quote) VALUES ('MEIV',1052);
INSERT INTO instrument(symbol,quote) VALUES ('NLMY',701);
INSERT INTO instrument(symbol,quote) VALUES ('XGPG',1889);
INSERT INTO instrument(symbol,quote) VALUES ('ZYHK',1800);
INSERT INTO instrument(symbol,quote) VALUES ('KRFR',1078);
INSERT INTO instrument(symbol,quote) VALUES ('IINR',1897);
INSERT INTO instrument(symbol,quote) VALUES ('FBDL',326);
INSERT INTO instrument(symbol,quote) VALUES ('NNHQ',1066);
INSERT INTO instrument(symbol,quote) VALUES ('BTLB',1201);
INSERT INTO instrument(symbol,quote) VALUES ('QRNZ',1950);
INSERT INTO instrument(symbol,quote) VALUES ('VORC',1688);
INSERT INTO instrument(symbol,quote) VALUES ('LGXA',1664);
INSERT INTO instrument(symbol,quote) VALUES ('XLQN',840);
INSERT INTO instrument(symbol,quote) VALUES ('LQJA',429);
INSERT INTO instrument(symbol,quote) VALUES ('RESX',565);
INSERT INTO instrument(symbol,quote) VALUES ('EQDP',1989);
INSERT INTO instrument(symbol,quote) VALUES ('DHPI',917);
INSERT INTO instrument(symbol,quote) VALUES ('JFVM',1398);
INSERT INTO instrument(symbol,quote) VALUES ('IPIV',377);
INSERT INTO instrument(symbol,quote) VALUES ('JBNE',1646);
INSERT INTO instrument(symbol,quote) VALUES ('ZFBF',1183);
INSERT INTO instrument(symbol,quote) VALUES ('LFHD',569);
INSERT INTO instrument(symbol,quote) VALUES ('DKCR',1528);
INSERT INTO instrument(symbol,quote) VALUES ('MNJH',703);
INSERT INTO instrument(symbol,quote) VALUES ('JKUD',934);
INSERT INTO instrument(symbol,quote) VALUES ('FGNE',1293);
INSERT INTO instrument(symbol,quote) VALUES ('HSII',251);
INSERT INTO instrument(symbol,quote) VALUES ('QZDI',685);
INSERT INTO instrument(symbol,quote) VALUES ('OEDW',865);
INSERT INTO instrument(symbol,quote) VALUES ('TIJE',1392);
INSERT INTO instrument(symbol,quote) VALUES ('PHDA',1698);
INSERT INTO instrument(symbol,quote) VALUES ('NSPD',1031);
INSERT INTO instrument(symbol,quote) VALUES ('XVDS',88);

INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (1,'FXIM','822-sxgot-451',7559,552,'2021-11-17 03:34:52');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (2,'BTLB','387-jyfpu-157',11,1154,'2021-02-06 04:50:59');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (3,'EQDP','429-fazic-743',3577,5,'2021-06-17 20:43:27');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (4,'MNJH','350-zmqwa-889',4350,646,'2021-07-22 09:23:30');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (5,'JPLB','101-liorh-628',8912,691,'2021-11-13 16:19:02');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (6,'NLMY','264-ziidg-337',4305,700,'2021-01-13 10:32:08');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (7,'FZVQ','898-wnuan-793',6946,227,'2021-06-05 22:27:43');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (8,'EGES','960-ztqge-913',9373,1814,'2021-09-17 20:40:48');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (9,'EZHY','302-kkeln-490',7941,1599,'2021-10-20 05:59:40');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (10,'JAJA','798-nfuap-603',4909,1658,'2021-05-03 10:57:09');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (11,'JACX','467-lqpya-330',6391,248,'2021-09-13 16:30:17');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (12,'HSII','597-yxndj-063',8063,788,'2021-01-23 14:08:23');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (13,'UPSM','264-ziidg-337',7045,77,'2021-10-27 20:52:44');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (14,'COTF','693-iembx-947',8401,243,'2021-11-16 12:11:06');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (15,'BEGP','798-nfuap-603',6633,95,'2021-09-22 23:46:19');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (16,'LFHD','101-liorh-628',8851,1634,'2021-05-29 11:19:58');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (17,'AFPZ','075-iulit-689',5308,849,'2021-01-12 22:23:08');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (18,'BLBR','960-ztqge-913',6063,1285,'2021-07-22 15:11:31');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (19,'VDVV','302-kkeln-490',7979,567,'2021-11-17 06:37:00');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (20,'HGFX','950-iuvro-338',6682,457,'2021-08-21 13:16:21');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (21,'IMYC','952-ywthq-176',2241,114,'2021-07-09 13:22:04');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (22,'RLOR','418-ylhld-122',6349,315,'2021-09-17 15:46:49');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (23,'EELY','822-sxgot-451',3752,1234,'2021-02-13 01:28:47');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (24,'NNHQ','429-fazic-743',2164,1203,'2021-02-12 23:26:37');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (25,'TNGJ','871-wcxji-438',7402,1772,'2021-04-09 20:29:01');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (26,'QRNZ','178-mjjjm-565',1930,343,'2021-07-22 04:07:12');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (27,'AFPZ','302-kkeln-490',1386,265,'2021-01-14 23:49:34');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (28,'PHDA','734-xfpls-018',5624,320,'2021-08-28 19:00:56');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (29,'BEGP','952-ywthq-176',745,1179,'2021-11-12 07:14:11');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (30,'HUZW','693-iembx-947',9881,1504,'2021-02-04 00:55:02');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (31,'KQSB','877-jjfke-429',3393,1545,'2021-08-24 23:19:42');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (32,'IMYC','960-ztqge-913',7478,1840,'2021-11-23 14:17:03');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (33,'GBDZ','264-ziidg-337',5586,702,'2021-06-22 15:07:34');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (34,'RLOR','898-wnuan-793',6340,1312,'2021-10-03 04:31:58');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (35,'FGNE','429-fazic-743',4473,1375,'2021-03-05 19:49:09');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (36,'EOTW','950-iuvro-338',7140,1373,'2021-10-27 02:38:09');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (37,'UKLO','952-ywthq-176',3485,1678,'2021-03-24 04:32:25');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (38,'RFWT','898-wnuan-793',8390,160,'2021-03-21 18:06:56');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (39,'EZHY','693-iembx-947',4356,1983,'2021-08-29 11:17:46');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (40,'PEPL','075-iulit-689',9133,754,'2021-09-25 11:25:03');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (41,'FDBS','418-ylhld-122',1871,1539,'2020-12-20 17:42:51');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (42,'ZYHK','387-jyfpu-157',1516,1809,'2021-07-18 00:00:27');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (43,'EGWQ','467-lqpya-330',225,789,'2021-01-18 13:38:41');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (44,'JAJA','101-liorh-628',549,885,'2021-03-20 22:22:36');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (45,'XLQN','734-xfpls-018',3331,496,'2021-08-04 11:35:49');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (46,'FBDL','429-fazic-743',5206,1818,'2021-05-30 17:54:42');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (47,'DKCR','350-zmqwa-889',6191,1061,'2021-07-14 15:27:24');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (48,'KLJN','871-wcxji-438',254,1187,'2021-04-23 03:33:13');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (49,'EELY','467-lqpya-330',6369,77,'2021-03-05 14:02:21');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (50,'JGJE','302-kkeln-490',5831,1621,'2020-12-04 17:14:35');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (51,'FMYM','378-gotsb-518',5564,970,'2021-07-26 09:29:06');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (52,'BIWN','429-fazic-743',8240,243,'2021-06-29 04:37:38');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (53,'TVNZ','495-sgiel-831',1272,1741,'2021-11-18 14:43:41');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (54,'JFVM','178-mjjjm-565',3547,1492,'2021-08-18 16:52:57');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (55,'OEDW','822-sxgot-451',611,1031,'2020-12-24 08:21:53');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (56,'ZYHK','101-liorh-628',3666,553,'2021-10-18 08:13:28');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (57,'XPYQ','350-zmqwa-889',2150,695,'2021-08-13 11:40:24');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (58,'KPBF','597-yxndj-063',7867,803,'2021-03-11 18:21:44');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (59,'PHDA','952-ywthq-176',1045,1297,'2021-09-21 07:38:45');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (60,'UTIY','871-wcxji-438',1062,1728,'2021-03-12 14:03:14');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (61,'UBMI','418-ylhld-122',9489,134,'2021-07-06 07:08:28');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (62,'FMYM','594-onhzg-252',5316,623,'2021-03-23 09:24:17');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (63,'EZHY','871-wcxji-438',7702,1618,'2021-01-31 02:28:15');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (64,'RIYO','734-xfpls-018',9272,1630,'2021-10-10 13:53:45');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (65,'VORC','877-jjfke-429',5485,583,'2021-11-11 14:59:21');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (66,'HUZW','950-iuvro-338',6834,465,'2021-10-28 18:43:43');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (67,'COTF','822-sxgot-451',8128,1712,'2021-02-24 14:19:14');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (68,'DQDI','693-iembx-947',921,403,'2021-01-26 21:58:34');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (69,'IMYC','952-ywthq-176',173,1645,'2021-09-30 01:43:05');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (70,'YKVM','264-ziidg-337',4572,663,'2021-03-28 22:48:34');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (71,'SDKQ','378-gotsb-518',4806,1056,'2021-07-25 14:10:38');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (72,'JACX','960-ztqge-913',4911,400,'2021-06-09 17:19:46');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (73,'EGES','302-kkeln-490',9557,916,'2021-08-09 13:17:48');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (74,'BEGP','101-liorh-628',9320,624,'2021-07-24 10:25:16');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (75,'HGFX','862-coqwz-635',8303,1369,'2021-02-02 20:04:20');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (76,'UBMI','467-lqpya-330',7769,52,'2021-02-07 12:41:18');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (77,'SYST','418-ylhld-122',3387,1996,'2021-07-29 20:35:08');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (78,'JJUL','950-iuvro-338',8381,643,'2021-03-07 19:13:05');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (79,'KLJN','877-jjfke-429',7012,1461,'2021-06-19 01:59:48');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (80,'PPMC','693-iembx-947',4603,1534,'2021-11-02 22:24:40');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (81,'DKCR','429-fazic-743',5121,1759,'2021-03-25 23:18:25');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (82,'FGNE','378-gotsb-518',6846,1108,'2021-10-07 17:29:08');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (83,'GELA','594-onhzg-252',3161,1182,'2021-10-26 16:07:29');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (84,'LQJA','822-sxgot-451',5664,721,'2021-04-04 00:35:35');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (85,'VORC','378-gotsb-518',3275,720,'2021-04-23 15:55:19');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (86,'RESX','418-ylhld-122',6654,74,'2021-02-21 02:17:10');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (87,'IPIV','594-onhzg-252',9133,855,'2020-12-13 18:59:03');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (88,'PHDA','693-iembx-947',5191,672,'2021-10-26 17:29:46');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (89,'FGFD','302-kkeln-490',1426,711,'2021-07-14 14:01:59');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (90,'KLJN','429-fazic-743',9985,1778,'2021-03-03 01:37:24');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (91,'ZYHK','862-coqwz-635',6112,226,'2021-07-29 01:42:19');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (92,'UBMI','960-ztqge-913',3726,1534,'2021-05-15 19:30:03');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (93,'EOTW','898-wnuan-793',2586,1032,'2021-05-19 18:07:03');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (94,'NNHQ','871-wcxji-438',1883,1088,'2021-05-22 15:09:32');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (95,'KRFR','075-iulit-689',1653,1171,'2021-05-08 23:35:41');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (96,'UABW','467-lqpya-330',9123,261,'2021-02-21 02:55:02');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (97,'JBNE','495-sgiel-831',6831,366,'2021-08-12 00:41:28');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (98,'FFIB','101-liorh-628',9586,1338,'2021-05-08 22:06:32');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (99,'FMYM','822-sxgot-451',8243,1566,'2021-07-15 15:35:11');
INSERT INTO trade(id,symbol,account_id,shares,price,date) VALUES (100,'IINR','597-yxndj-063',5926,305,'2021-09-27 08:23:52');

INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('178-mjjjm-565','OEDW',1198);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('495-sgiel-831','DZFK',1524);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('597-yxndj-063','IPIV',305);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('378-gotsb-518','IMYC',7262);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('950-iuvro-338','NQIM',5322);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('467-lqpya-330','RIYO',7313);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('075-iulit-689','BTBS',1808);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','SDKQ',6420);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('387-jyfpu-157','JBNE',6374);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('302-kkeln-490','FGNE',7360);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('594-onhzg-252','TVNZ',8510);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','XGPG',4282);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('378-gotsb-518','WUWA',9412);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('594-onhzg-252','GBDZ',9043);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('877-jjfke-429','VMXE',2319);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('467-lqpya-330','XVDS',7238);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','SYST',1974);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('693-iembx-947','BEGP',4273);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('898-wnuan-793','TVNZ',7411);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('960-ztqge-913','ZYHK',1732);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('822-sxgot-451','IINR',8645);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('798-nfuap-603','PPMC',3063);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('495-sgiel-831','YJAN',4626);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('429-fazic-743','JKUD',5236);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('798-nfuap-603','JBNE',1782);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','KLJN',8497);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('101-liorh-628','KQSB',1253);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('418-ylhld-122','FBDL',9083);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('862-coqwz-635','JGJE',2574);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','VDVV',8837);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','TIJE',320);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('877-jjfke-429','RESX',8536);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('467-lqpya-330','EQDP',8858);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('950-iuvro-338','EGES',7991);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('178-mjjjm-565','OZMC',1448);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('960-ztqge-913','BEGP',8151);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','NSPD',8986);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('960-ztqge-913','EZHY',9915);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('467-lqpya-330','RFWT',7843);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('418-ylhld-122','SHQN',5813);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','NLMY',8289);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('862-coqwz-635','DZFK',2677);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('101-liorh-628','EOTW',7755);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('429-fazic-743','AFPZ',9531);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('952-ywthq-176','DQDI',9221);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('898-wnuan-793','LFHD',933);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('302-kkeln-490','FJHG',9998);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','XGPG',7121);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','EWCE',8908);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('898-wnuan-793','SHQN',6568);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('075-iulit-689','FJHG',2171);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('822-sxgot-451','VMXE',244);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('101-liorh-628','DQDI',3858);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('877-jjfke-429','KLJN',9347);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('952-ywthq-176','EGWQ',4775);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('387-jyfpu-157','FBDL',7242);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('429-fazic-743','IMYC',270);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('178-mjjjm-565','RIYO',7822);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','DQBR',520);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('495-sgiel-831','COTF',5125);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('075-iulit-689','LFHD',2513);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('302-kkeln-490','BLBR',299);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('952-ywthq-176','DZFK',3731);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('378-gotsb-518','TVNZ',1440);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('877-jjfke-429','GIVG',3079);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('429-fazic-743','MNJH',9482);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('960-ztqge-913','NQIM',4574);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('387-jyfpu-157','FZVQ',863);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('418-ylhld-122','JFVM',9671);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','PEPL',6631);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('693-iembx-947','LGXA',7390);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','FJHG',2234);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('302-kkeln-490','DQBR',5933);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('862-coqwz-635','FFIB',1131);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('350-zmqwa-889','FXIM',7477);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('597-yxndj-063','LKMZ',511);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('418-ylhld-122','UBMI',7332);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('378-gotsb-518','JGJE',2272);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('178-mjjjm-565','GIVG',7474);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','EGWQ',7779);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('429-fazic-743','PHDA',305);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('594-onhzg-252','ZZYV',7848);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('693-iembx-947','XGPG',1531);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','UABW',9163);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('822-sxgot-451','PEPL',453);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('467-lqpya-330','FGFD',4922);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('594-onhzg-252','FFIB',149);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('264-ziidg-337','BEGP',5027);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('862-coqwz-635','IHNK',7451);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('378-gotsb-518','RLOR',6486);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('950-iuvro-338','NQIM',1098);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('387-jyfpu-157','XPYQ',457);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('952-ywthq-176','ZFBF',5604);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('101-liorh-628','UBMI',7246);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('871-wcxji-438','JJUL',354);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('495-sgiel-831','FJHG',4248);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('798-nfuap-603','EZHY',3353);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('350-zmqwa-889','NLMY',5149);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('734-xfpls-018','JGJE',3784);
INSERT INTO owns(account_id,instrument_symbol,quantity) VALUES ('178-mjjjm-565','EELY',2736);
