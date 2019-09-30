%MUNEEBS INMPLKEMENTATION OF MCP NEURION for X-OR function

%THRESHHOLD UNIFIRM across all layers
Th=2

%WEIGHT VECTORS
%      ^   ^
% W= [w11 w12 
%     w21 w22]


W=[2 -1; -1 2]
V=[2;2]

%INPUT VECTORS
X=[0 0; 0 1; 1 0; 1 1]
T=[0; 1; 1; 0]

Z_in=X*W

Z=Z_in;
%CALCULTANG Z-OUT (i/.e output after 1st layes, applying the threshold
[m n]= size(Z_in);


%binary activation function
for i=1:m
    for j=1:n
        if Z_in(i,j)>=Th
            Z(i,j)=1;
        else
            Z(i,j)=0;
        end
    end
end

Z


Y_in= Z*V

Y=Y_in;

[m n]= size(Y_in);

%binary activation function
for i=1:m
    for j=1:n
        Y(i,j)=binary(Y_in(i,j),Th);
        %if Y_in(i,j)>=Th
        %    Y(i,j)=1;
        %else
        %    Y(i,j)=0;
        %end
    end
end


Y

%error

E=(Y-T);
[m,n] = meansqr(E);

%trivial function so expectes MSE IS ZERO
if(m==0)
    sprintf('Model is working for XOR')
else
    sprintf('Model is not working for XOR')

end
