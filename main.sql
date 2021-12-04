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
