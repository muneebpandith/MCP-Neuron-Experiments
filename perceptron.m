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
B=1
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

 for epoch=1:1000
     sprintf('Epoch %d',epoch)
 
     for i=1:n
   
       
        %first check op, then set threswhold then update weights
        Y_in=(X1(i)*W1) +  (X2(i)*W2) +B  
        
        
        %threshold only first time
        if dummycount==1
            %set threshold
            Th=Y_in;
            dummycount=2;
        end
        
        if Y_in <= Th
            Y(i)=-1
        else
            Y(i)=1
        end    
        %threshold is set now if output is expected ouptut, no cahnge of
        %weights
        if Y(i) == T(i)
            d_W1=0;
            d_W2=0;
            d_B=0;
        else
            %change of weights
             d_W1=neeta*X1(i)*T(i)
             d_W2=neeta*X2(i)*T(i)
             d_B =neeta*T(i)
        end
        
        W1=W1+d_W1
        W2=W2+d_W2
        B=B+d_B
        
     end
  
     E=(T-Y);
     E
    [m,n] = meansqr(E);
    P(epoch)=m;
    EP(epoch)=epoch;
    sprintf('MSE after %d epoch is %d',epoch,m)
 end
 
  plot(EP,P)
 
%error


%trivial function so expectes MSE IS ZERO
if(m <=0.25)  
    sprintf('Model is working for OR')
else
    sprintf('Model is not working for OR')

end

