LIBNAME PROJ '/folders/myshortcuts/sf_myfolders/exercise';

Data salaryCalc;
set proj.accounting;
salary = Base + (OTHours * Rate);
Run;


 