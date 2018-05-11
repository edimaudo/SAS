Data gapRetail;

LENGTH CustomerID $7.;
INFORMAT transactiondate MMDDYY10.;
LENGTH amount $6.;
LENGTH category $8.;
Input CustomerID $ transactiondate $ amount $ category;
FORMAT transactiondate DATE9.;
Datalines;
9801234	10/01/1998	123.98	toys
9802234	12/10/1997	80.34	books
9802234	12/10/1997	100.00	apparel
9805556	08/01/1996	22.90	toys
9805556	09/10/1996	25.50	apparel
9805556	10/11/1996	18.90	books
9801134	11/11/1999	12.11	toys
;
Run;