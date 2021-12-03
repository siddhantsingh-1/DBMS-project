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