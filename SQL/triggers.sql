CREATE TRIGGER "update_account"
AFTER INSERT ON "trade"
FOR EACH ROW
BEGIN
IF NEW."buy_or_sell" = 1 THEN
    UPDATE "account"
    SET "investment_value" = "investment_value" + NEW."amount",
        "cash_balance" = "cash_balance" - NEW."amount",
    WHERE NEW."account_id" = "account"."account_id";
ELSE IF NEW."buy_or_sell" = 2 THEN
    UPDATE "account"
    SET "investment_value" = "investment_value" - NEW."amount",
        "cash_balance" = "cash_balance" + NEW."amount",
    WHERE NEW."account_id" = "account"."account_id";
END IF;
