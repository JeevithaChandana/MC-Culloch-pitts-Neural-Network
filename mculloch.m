clc;clear;close all;
%% MC CULLOCH PITTS NEURON MODEL
% Assuming that all the inputs given are of dual input
logic1=input('enter the gate u want to apply');
thres=double (input('enter the threshold value'));
weights=double(input('enter the weights'));
disp(weights(1));
disp(weights(2));
X=[[0,0];[0,1];[1,0];[1,1]];
%% Activation Function
for j=1:4
    Y(j)=X(j,1)*weights(1)+X(j,2)*weights(2);
end
disp(Y);
%% logic gates
if logic1=='AND'
    T=[0 0 0 1];
elseif logic1=='OR'
     T=[0 1 1 1];
elseif logic1=='NAND'
    T=[1 1 1 0];
elseif logic1=='NOR'
    T=[1 0 0 0];
else 
    T=[1 1 1 1];
end
disp(T);
%% Thresholding 
for k=1:1:4
    if Y(k)>thres
        YF(k)=1;
    else
        YF(k)=0;
    end
end
disp(YF);
%% checking the output 
if YF==T
    print('yes');
else
    print('update or change the values of weights or threshold');
end
%%    
