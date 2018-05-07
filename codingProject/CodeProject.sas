*Task 2a-1 Range Check;
*check income;
Data CustomerRangeTemp;
  set Customer;
  where income > 500000 or income < 0;
Run;

*check spend;
Data CustomerRangeTemp;
  set Customer;
  where spend < 0 or spend > 3*income;
run;

*check age;
Data CustomerRangeTemp;
  set Customer;
  where (DOS-DOB)/365.25 > 140 or (DOS-DOB)/365.25 < 0;
run;

*Task 2a-2 Invalid character check;
*check custid length and numeric;
Data CustomerCharacterTemp;
  set Customer;
  where verify(Custid,'0123456789') or length(custid) ne 8; 
run;

*check first and last names;
Data CustomerCharacterTemp;
  set Customer;
  where notalpha(First,-1)>0 or notalpha(Last,-1) > 0;
  *where verify(First,'abcdefghijklmnopqrstuvwxyz') or verify (Last,'abcdefghijklmnopqrstuvwxyz'); 
run;

*check occupation;
Data CustomerCharacterTemp;
  set Customer;
  where notalpha(occup,-1);
run;

*Category value check;
*check gender;
Data CustomerCategoryTemp;
  set Customer;
  where lowcase(Gender) not in ('male','female');
run;

*check edu;
Data CustomerCategoryTemp;
  set Customer;
  where Edu not in (1,2,3,4);
run;

*check marital status;
Data CustomerCategoryTemp;
  set Customer;
  where lowcase(status) not in ('single','married','divorced');
run;

/*
Task 2b
*/

Data CustomerCategoryTemp1;
  set Customer;
  where lowcase(status) not in ('single','married','divorced') or
  Edu not in (1,2,3,4) or
  lowcase(Gender) not in ('male','female') or
  notalpha(occup,-1) or
  (notalpha(First,-1)>0 or notalpha(Last,-1) > 0) or
  (verify(Custid,'0123456789') or length(custid) ne 8);
  /*combine errors into 1 column
  convert numeric to character using put, could try input as well
  could use concat function
  */
  drop();
run;


proc export 
  data=work.customercategorytemp1 
  dbms=xlsx 
  outfile="/folders/myfolders/codingProject/ErrorReport.xlsx" 
  replace;
run;

