load('nofault.mat')
transpose (nofault);
NF=reshape (nofault,25600,59);
load('innerRaceway.mat')
transpose (InnerRaceway);
I=InnerRaceway(:,1:end-1);
IRW=reshape (I,25600,[]);
load('outerRaceway.mat')
transpose (OuterRaceWay);
ORW=reshape (OuterRaceWay,25600,60);
O=ORW(:,1:end-1);
RollerFault=horzcat (rf20,rf30,rf40,rf60);
transpose (RollerFault);
RF=reshape (RollerFault,25600,[]);
RF=RF(:,1:end-10);
ORW=ORW(:,1:end-1);
x=cat(2,NF,IRW,ORW,RF);
r=rms(x); 
plot (r);
k=kurtosis (x);
plot (k);
kew=skewness (x);
plot(skew)
mean = mean (x); 
plot(mean)
median=median (x);
plot(median)