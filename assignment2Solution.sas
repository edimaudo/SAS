libname dataset "/folders/myfolders/SAS";
data GradApplication;
Set gsapp2.dat;
SUMGPA = sum(GPA)
run;