clc; clear all; close all;

%% for training data
trn_raw = importdata('optdigits.tra');
[M, N] = size(trn_raw);
fileID = fopen('trndata','w');
for i = 1:M
    fprintf(fileID, '%d ', trn_raw(i, N));
    for j = 1:N-1
        fprintf(fileID, '%d%s%d ', j, ':', trn_raw(i,j));
    end
    fprintf(fileID, '\n');
end
fclose(fileID);

%% for testing
tst_raw = importdata('optdigits.tes');
[M, N] = size(tst_raw);
fileID = fopen('tstdata','w');
for i = 1:M
    fprintf(fileID, '%d ', tst_raw(i, N));
    for j = 1:N-1
        fprintf(fileID, '%d%s%d ', j, ':', tst_raw(i,j));
    end
    fprintf(fileID, '\n');
end
fclose(fileID);