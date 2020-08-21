
clear all ;close all

% Script to extract cross val meta-data from folders to feed to script main.py

foldername = '/home/niharika-shimona/Documents/Projects/Autism_Network/Deep sr-DDL/Data/KKI/';

%sizes
train_size = size(dir([foldername '/Train']),1)-2;
test_size = size(dir([foldername '/Test']),1)-2;
P = 116; % AAL parcellation size
no_targets = 3; % no of clinical score targets

% pre-allocate variables
L_train = zeros(train_size,P,P);
L_test = zeros(test_size,P,P);
Y_train = zeros(train_size,no_targets);
Y_test = zeros(test_size,no_targets);

%train
for i = 1:train_size
    
    subject_filename = strcat(foldername,'/Train/subject_',num2str(i),'.mat');
    load(subject_filename);
    corr_train{i} = subject.corr;
    L_train(i,:,:) = subject.L;
    Y_train(i,:) = subject.Y;
    
end


%test
for i = 1:test_size
    
    subject_filename = strcat(foldername,'/Test/subject_',num2str(i),'.mat');
    load(subject_filename);
    corr_test{i} = subject.corr;
    L_test(i,:,:) = subject.L;
    Y_test(i,:) = subject.Y;
    
end

save(strcat(foldername,'data.mat'),'corr_train','corr_test','L_train','L_test','Y_train','Y_test')