clc; clear;
inID=fopen("student_marks.txt","r"); outID=fopen("final_report.txt","w");
if inID==-1
    fprintf(outID,"Error: student_marks.txt could not be opened.\n"); fclose(outID); return;
end
marks=fscanf(inID,"%f"); fclose(inID);
[total,average,highest,lowest,passCount,failCount,overall]=resultSummary(marks);
fprintf(outID,"Integrated Student Record Report\n");
fprintf(outID,"Input marks: "); fprintf(outID,"%g ",marks); fprintf(outID,"\n");
fprintf(outID,"Valid marks are those from 0 to 100; invalid marks are ignored.\n");
fprintf(outID,"Total: %g\nAverage: %.2f\nHighest: %g\nLowest: %g\nPass count: %d\nFail count: %d\nOverall result: %s\n",total,average,highest,lowest,passCount,failCount,overall);
fclose(outID);
disp("Final report saved to final_report.txt");
