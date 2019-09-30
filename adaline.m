%MUNEEBS INMPLKEMENTATION OF Hebbs NEURION for OR function
clc
clear all
%WEIGHT VECTORS
% W[] W1,W2

%W1=[1; -1]
W1=0.5
W2=-0.5
%bias
%B=[0]
B=0
%neeta
neeta=0.1

%INPUT VECTORS
X1=[-1 -1 1 1]
X2=[-1 1 -1 1]

T=[-1 1 1 1]


%delta W
d_W1=0;
d_W2=0;


%deltaB
d_B=0;

dummycount=1;
%calcultion on the 2nd layer
[m n] =size(X1)

 for epoch=1:100
     sprintf('Epoch %d',epoch)
     sum=0;
     for i=1:n
   
       
        %first check op, then update weights
        Y_in=(X1(i)*W1) +  (X2(i)*W2) +B  
                
       
     
        
       %change of weights is always
             d_W1=neeta*(T(i)-Y_in)*X1(i)
             d_W2=neeta*(T(i)-Y_in)*X2(i)
             d_B =neeta*(T(i)-Y_in)*1
      
        %there is no thrshold
        
        Y(i)=Y_in;
        W1=W1+d_W1
        W2=W2+d_W2
        B=B+d_B
        
       % sum=sum + (T(i)- Y(i))^2
        
     end
   
    Y
    %T
    E=(T-Y);
    [m,n] = meansqr(E);
     P(epoch)=m;
    EP(epoch)=epoch;
    
    
    sprintf('MSE after %d epoch is %d',epoch,m)
 end
 plot(EP,P)
 
%error


%trivial function so expectes MSE IS ZERO
if(m<=0.25)
    sprintf('Model is working for OR')
else
    sprintf('Model Accuracy %d %%', (1-m)*100)

end

