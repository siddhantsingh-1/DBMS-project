--Creating Tables

CREATE TABLE "user"(
    "username" varchar(30) PRIMARY KEY,
    "name" varchar(50) NOT NULL
);

CREATE TABLE "account"(
    "account_id" integer PRIMARY KEY,
    "username" varchar(30) NOT NULL, --fk
    "cash_balance" bigint NOT NULL,
    "investment_value" bigint NOT NULL,
    "total_value" bigint GENERATED ALWAYS AS (cash_balance + investment_value) STORED
);

CREATE TABLE "instrument"(
    "instrument_id" integer PRIMARY KEY,
    "quote" decimal NOT NULL,
    "stock_ticker" varchar(30), --fk
    "etf_ticker" varchar(30), --fk
);

CREATE TABLE "trade"(
    "trade_id" integer PRIMARY KEY,
    "buy_or_sell" varchar(10) NOT NULL,
    "shares" integer NOT NULL,
    "price" integer NOT NULL,
    "amount" bigint GENERATED ALWAYS AS(shares*price) STORED,
    "trade_date" date NOT NULL,
    "account_id" integer NOT NULL, --fk
    "instrument_id" integer NOT NULL, --fk
);

CREATE TABLE "owns"(
    "account_id" integer, --fk
    "instrument_id" integer, --fk
    "quantity" int,
    PRIMARY KEY("account_id", "instrument_id")
);

CREATE TABLE "stock"(
    "stock_ticker" varchar(30) PRIMARY KEY,
    "company_name" varchar(50),
    "market_cap" bigint,
    "pe_ratio" decimal
);

CREATE TABLE "etf"(
    "etf_ticker" varchar(30) PRIMARY KEY,
    "issuer_name" varchar(50),
    "underlying" varchar(50),
    "launch_date" date
);

ALTER TABLE "account" ADD CONSTRAINT "account_fk0" FOREIGN KEY("username") REFERENCES "user"("username");

ALTER TABLE "instrument" ADD CONSTRAINT "instrument_fk0" FOREIGN KEY("stock_ticker") REFERENCES "stock"("stock_ticker");
ALTER TABLE "instrument" ADD CONSTRAINT "instrument_fk1" FOREIGN KEY("etf_ticker") REFERENCES "etf"("etf_ticker");

ALTER TABLE "trade" ADD CONSTRAINT "trade_fk0" FOREIGN KEY("account_id") REFERENCES "account"("account_id");
ALTER TABLE "trade" ADD CONSTRAINT "trade_fk1" FOREIGN KEY("instrument_id") REFERENCES "instrument"("instrument_id");

ALTER TABLE "owns" ADD CONSTRAINT "owns_fk0" FOREIGN KEY("account_id") REFERENCES "account"("account_id");
ALTER TABLE "owns" ADD CONSTRAINT "owns_fk1" FOREIGN KEY("instrument_id") REFERENCES "instrument"("instrument_id");
