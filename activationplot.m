r1= input('Enter range r1: ')
r2= input('Enter range r2: ')

x1=r1:1:r2;
y1=sigmoidal(x1);
figure('name','sigmoid')
plot(x1,y1);

x2=r1:1:r2;
y2=identity(x2);
figure('name','identity')
plot(x2,y2);

x3=r1:1:r2;
y3=bisigmoidal(x3);
figure('name','bisigmoid')
plot(x3,y3);

x4=r1:1:r2;
y4=htan(x4);
figure('name','htan')
plot(x4,y4);





x6=r1:1:r2;
 for c=1:10
    y6(c)=bibinary(x6(c),2);
 end
figure('name','bipolar binary')
plot(x6,y6);

