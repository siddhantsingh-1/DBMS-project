CREATE TABLE user(
    username varchar(20) PRIMARY KEY,
    name varchar(30)
    );
CREATE TABLE account(
    account_id varchar(13) PRIMARY KEY,
    cash_balance bigint,
    investment_value bigint,
    total_value int GENERATED ALWAYS AS (cash_balance + investment_value) STORED
     );

CREATE TABLE trade(
    ID int PRIMARY KEY,
    symbol varchar(10),
    account_id varchar(13),
    shares int,
    price int,
    amount bigint GENERATED ALWAYS AS(shares*prices) STORED,
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