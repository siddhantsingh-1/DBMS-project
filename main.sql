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

