data scores;
     input Name $ Test_1 Test_2 Test_3;
     datalines;
  Bill 187 97 103
  Carlos 156 76 74
  Monique 99 102 129
  ;
  
run;


data totalScores;
	set scores;
	totalScore = Test_1 + Test_2 + Test_3;
run;