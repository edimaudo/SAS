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

Data mathExamInfo; 
set proj.mathexam;
exam_result = substr(Comment,length(Comment)-2,length(Comment));
run;

Data mathExamInfo2;
set proj.mathexam;
exam_result = substr(Comment,indexc(Comment,"0123456789"),2);
run;

Data symptomcheck;
set proj.symptoms;
if index(LOWCASE(Symptoms),'fatigue') <> 0 then symptomcheck = "Yes";
else symptomcheck = "No"; 
run;

Data subsetmargarin;
set sashelp.margarin;
KEEP HOUSEID CHOICE BRAND;
rename HOUSEID = ID;
run;

Data carchoice;
set sashelp.cars;
if MSRP < 40000 then cartype = "Economy";
else cartype = "Luxury";
run;

Data phonebillcalc;
set proj.phonebill;
if minutes > 200 then minutescalc = 0.1*(minutes - 200);
else minutescalc = 0;
if messages > 25 then messagecalc = 0.5*(messages - 25);
else messagecalc = 0;
if data > 1000 then datacalc = 0.05*(data - 1000);
else datacalc = 0;
totalbill = 30 + minutescalc + messagecalc + datacalc;
run;






 