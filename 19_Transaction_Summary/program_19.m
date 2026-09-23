clc; clear;
inID=fopen("transactions.txt","r"); outID=fopen("output.txt","w");
if inID==-1
    fprintf(outID,"Error: transactions.txt could not be opened.\n"); fclose(outID); return;
end
x=fscanf(inID,"%f"); fclose(inID);
creditTotal=0; debitTotal=0; creditCount=0; debitCount=0; largestCredit=0; largestDebit=0;
for i=1:length(x)
    if x(i)>0
        creditTotal=creditTotal+x(i); creditCount=creditCount+1;
        if x(i)>largestCredit, largestCredit=x(i); end
    elseif x(i)<0
        debitTotal=debitTotal+x(i); debitCount=debitCount+1;
        if abs(x(i))>largestDebit, largestDebit=abs(x(i)); end
    end
end
fprintf(outID,"Total credits: %g\nTotal debits: %g\nNet balance: %g\nCredit transactions: %d\nDebit transactions: %d\nLargest credit: %g\nLargest debit magnitude: %g\n",creditTotal,debitTotal,creditTotal+debitTotal,creditCount,debitCount,largestCredit,largestDebit);
fclose(outID);
disp("Transaction summary saved to output.txt");
