LIBNAME PROJ '/folders/myshortcuts/sf_myfolders/exercise';

Data salaryCalc;
set proj.accounting;
salary = Base + (OTHours * Rate);
Run;

Data sales;
set proj.sales;
total_sales = MON + TUE + WED + THR + FRI;
RUN;

 