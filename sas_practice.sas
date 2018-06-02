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

Data groceryinfo;
set proj.grocery;
New = round(Price * (1 - (DISCOUNT/100)),0.01) ;
RUN;

Data numberround;
set proj.numbers;
RandNoNew = floor(RandNo*10)/10;
run;

Data phoneinfo;
set proj.phonelist;
telinfo = substr(tel,1,3);
run;

Data namelen;
set proj.firstname;
namelength = length(name);
run;

Data firstlast;
set proj.firstlast;
first_last = catx(" ",First,Last);
run;


 