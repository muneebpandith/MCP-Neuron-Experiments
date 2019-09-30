%MUNEEBS INMPLKEMENTATION OF Hebbs NEURION for OR function
clc
clear all
%WEIGHT VECTORS
% W[] W1,W2

%W1=[1; -1]
W1=1
W2=-1

%bias
%B=[0]
B=-1

%INPUT VECTORS
X1=[-1 -1 1 1]
X2=[-1 1 -1 1]

T=[-1 1 1 1]


%delta W
d_W1=0;
d_W2=0;


%deltaB
d_B=0;


%calcultion on the 2nd layer
[m n] =size(X1)

 for epoch=1:2
     sprintf('Epoch %d',epoch)
 
     for i=1:n
   
     
        d_W1=X1(i)*T(i)
        d_W2=X2(i)*T(i)
        d_B=T(i)
        
        W1=W1+d_W1
        W2=W2+d_W2
        B=B+d_B
        
        Y(i)=W1*X1(i)+B;
        Y(i)=bibinary(Y(i),-2);
        transpose(Y)
     end
  
     E=(Y-T);
    [m,n] = meansqr(E);
    sprintf('MSE after %d epoch is %d',epoch,m)
 end
 
 
 
%error


%trivial function so expectes MSE IS ZERO
if(m==0)
    sprintf('Model is working for OR')
else
    sprintf('Model is not working for OR')

end

