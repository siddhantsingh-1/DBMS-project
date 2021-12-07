--Display user
SELECT * FROM user;
-- Display account table
SELECT * FROM account;
-- Display trade table
SELECT * FROM trade;
--Display owns table
SELECT * FROM owns;

--display username of accounts possessing more than 9000 shares
SELECT username, SUM(shares) AS total_shares FROM trade, account
WHERE trade.account_id = account.account_id and shares > 9000
GROUP BY username;

--display username of accounts having more than ten types of share
WITH premium 
AS(
SELECT username, COUNT(symbol) AS symbol_count FROM trade LEFT JOIN account ON trade.account_id = account.account_id
GROUP BY username
)
SELECT * FROM premium where symbol_count >10;

--display trades that happened in the past month
SELECT id,symbol,date from trade
WHERE MONTH(CURDATE()) - MONTH(date) <=1;

--display count of instrument symbols for each account_id if its greater than 3 
SELECT account_id, COUNT(instrument_symbol) FROM owns GROUP BY account_id
HAVING COUNT(instrument_symbol) > 3;

--display instruments having quote more than 1000
SELECT * FROM instrument WHERE quote > 1500;

--display account_id of the customers owning more than 3000 shares starting with E
SELECT account_id, symbol, shares from trade 
WHERE symbol LIKE 'E%' AND shares > 3000
GROUP BY account_id; 

--
SELECT DISTINCT account_id from owns;

Select account_id from account;