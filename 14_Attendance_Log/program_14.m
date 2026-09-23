clc; clear;
% Accepted status values: Present and Absent.
names={"Aman","Riya","Karan","Neha","Vivek"};
statuses={"Present","Absent","Present","Present","Absent"};

fileID=fopen("attendance.txt","a");
if fileID==-1
    error("Could not open attendance.txt");
end
for i=1:length(names)
    status=statuses{i};
    if strcmp(status,"Present") || strcmp(status,"Absent")
        fprintf(fileID,"%s - %s\n",names{i},status);
    end
end
fclose(fileID);
disp("Attendance records appended to attendance.txt");
