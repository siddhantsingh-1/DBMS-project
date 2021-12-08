--Display user
SELECT * FROM user;
-- Display account table
SELECT * FROM account;
-- Display trade table
SELECT * FROM trade;
--Display owns table
SELECT * FROM owns;

--Display username of accounts possessing more than 500 shares
SELECT username, SUM(shares) AS total_shares FROM trade, account
WHERE trade.account_id = account.account_id and shares > 9000
GROUP BY username;

--Display username of accounts having only a single share

--Display trades that happened in the past 3 months
SELECT id,symbol,date from trade
WHERE MONTH(CURDATE()) - MONTH(date) <=1;

--Display count of instrument_id for each account_id if its greater than 2 
SELECT account_id, COUNT(instrument_symbol) FROM owns GROUP BY account_id
HAVING COUNT(instrument_symbol) > 3;

--Display instruments having quote more than 1000
SELECT * FROM instrument WHERE quote > 1000;

--Display account_id of the customers owning more than 100 shares of an etf which was launched before 2014
SELECT account_id, symbol, shares from trade 
WHERE symbol LIKE 'E%' AND shares > 3000
GROUP BY account_id; 

--Display account_id of the customers owning shares of a stock having stock_ticker start with "T"


Select account_id from account;

--Display top 3 stocks by market cap

--Display username which never sold any instrument
WITH sold AS 

--Display account_id and username of account having most amount of instruments
SELECT "account"."account_id", "username", SUM("quantity") AS "total_instruments"
FROM "owns", "account"
WHERE "owns"."account_id" = "account"."account_id"
GROUP BY "account_id"
ORDER BY SUM(quantity)
DESC LIMIT 1;
