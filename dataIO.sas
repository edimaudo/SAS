/*Health club data*/

data HealthClub;
	input IdNumber Name $ Team $ StartWeight EndWeight;
	datalines;
	1023 David  red    189 165
	1049 Amelia yellow 145 135
	1219 Alan 	red	   210 192
	1246 Ravi yellow 194 177 
	1078 Ashley red 127 118 
	1221 Jim yellow 220 .
	;

run;	

proc print data=HealthClub;
     title ’Weight of Club Members’;
run;


/*Column Input data*/
data club1;
   input IdNumber 1-4 Name $ 6-11 Team $ 13-18 StartWeight 20-22 EndWeight 24-26;
   datalines;
   1023 David  red    189 165
   1049 Amelia yellow 145
   1219 Alan   red
   1246 Ravi   yellow
   1078 Ashley red
   1221 Jim    yellow 220
;
proc print data=club1;
   title ’Weight Club Members’;
run;


/*reading values with special characters*/
/*Item $10. +6 move 6 columns to the right*/
data january_sales;
input Item $10. @17 Amount comma5.;
datalines;
trucks          1,382
vans            1,235
sedans          2391
;
proc print data=january_sales;
     title ’January Sales in Thousands’;
run;


/*Length of twelve and comma integer*/
data january_sales;
                   input Item : $12. Amount : comma5.;
  datalines;
trucks          1,382
vans            1,235
sedans          2391
sportutlity     987
  ;
  proc print data=january_sales;
     title ’January Sales in Thousands’;
run;

/*use & for blanks*/


/*filtering data*/
data yellow_team;
	input Team $ 13-18 @;
	if Team = 'yellow';
	input IdNumber 1-4 StartWeight 20-22 EndWeight 24-26;

datalines;
1023 David  red 189 165
1049 Amelia yellow 145 124 
1219 Alan   red 210 192 
1246 Ravi   yellow 194 177 
1078 Ashley red 127 118 
1221 Jim    yellow 220 .
;


 /*double trailing using at at*/
 data body_fat;
                   input Gender $ PercentFat @@;
                   datalines;
m 13.3 f 22
m 22 f 23.2 m16 m12
;


/*weird input*/

data club2;
 input #2 Team $ 1-6 #1 Name $ 6-23 IdNumber 1-4
 #3 StartWeight 1-3 EndWeight 5-7;
     datalines;
  1023 David Shaw
  red
  189 165
  1049 Amelia Serrano
  yellow
  145 124
  1219 Alan Nance
  red
  210 192
  1246 Ravi Sinha
  yellow
  194 177
  1078 Ashley McKnight
  red
  127 118
  1221 Jim Brown
  yellow
  220   .
  ;
 