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
    current_value bigint,
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
