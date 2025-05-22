CREATE VIEW vw_daily_pnl3 AS
SELECT 
  "LabaRugi_id",
  "asOfDate",
  "41Revenue" + "42Revenue" + "43Revenue" AS revenue,
  "61Expense" + "62Expense" + "69Expense" AS expenses,
  ("41Revenue" + "42Revenue" + "43Revenue") - ("61Expense" + "62Expense" + "69Expense") AS profit_loss,
  auth_user_id_FK
FROM "tbLabaRugi";
