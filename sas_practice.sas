LIBNAME PROJ '/folders/myshortcuts/sf_myfolders/exercise';

Data salaryCalc;
set proj.accounting;
salary = Base + (OTHours * Rate);
Run;

Data sales;
set proj.sales;
total_sales = MON + TUE + WED + THR + FRI;
RUN;

Data exam;
set proj.exam;
final_score = 0.5*FINAL + 0.5*MAX(TEST1,TEST2);
RUN;

Data baseballpred;
set proj.stat;
Pred = Current * RAND('UNIForm', 0.9, 1.1);
run;

 