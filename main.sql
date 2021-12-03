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