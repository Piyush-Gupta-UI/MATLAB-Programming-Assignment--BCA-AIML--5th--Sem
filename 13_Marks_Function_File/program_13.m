clc; clear;
marks=[78 65 105 -2 35 88 42];
[average,highest,passCount,failCount,valid]=analyzeMarks(marks);
fileID=fopen("result.txt","w");
fprintf(fileID,"Marks Analysis\nValid marks: "); fprintf(fileID,"%g ",valid);
fprintf(fileID,"\nAverage: %.2f\nHighest: %g\nPass count: %d\nFail count: %d\n",average,highest,passCount,failCount);
fclose(fileID);
disp("Complete analysis written to result.txt");
