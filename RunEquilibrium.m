%clear all
clc
tic;
rng(int16(subject)); %
% Run_no=30;         % Number of independent runs 
% Particles_no=100;   % Number of particles
% Max_iteration=50; % Maximum number of iterations
MinBest = 30;

%FitnessFunction='Corr'; %  Corr, Fisher, Combined 

fprintf('Executing Equilibrium Optimizer\n');
fprintf('Fitness Function: %s\n',FitnessFunction);


[lb,ub,dim,fobj]=Get_Functions_details(FitnessFunction);
    
[Convergence_curve,Ave,Sd,Fitness,Channels]=EO(Particles_no,Max_iteration,lb,ub,dim,fobj,Run_no,cnt,MinBest,FitnessFunction);

display(['The average objective function is : ', num2str(Ave,7)]);
display(['The standard deviation is : ', num2str(Sd,7)]);

toc;

figure
plot(Convergence_curve)
grid on
title('Convergence Curve')

title('Concentration difference (Convergence)')
xlabel('iterations')
ylabel('fitness')

%%
figure
plot(Fitness)
grid on
title('Fitness of Individuals')
axis tight

%%

if(length(Channels) > MaxBest)
    fprintf('Selected Channels')
    nfo.clab(Channels(1:MaxBest))
else
    fprintf('Selected Channels are less than Max Specified')
    nfo.clab(Channels)
end
%%
fileID = fopen('result.txt','a');
fprintf(fileID,'# ----------  %s ---------- \n',datestr(datetime));
fprintf(fileID,'Subject: %s\n',subject);
fprintf(fileID,'Method: %s\n',FitnessFunction);

sch = nfo.clab(Channels);

for c = 1:length(sch)
    fprintf(fileID,'%s\t',sch{c});
end
fprintf(fileID,'\n');
fprintf(fileID,'Total Channels: %d\n',length(sch));
fclose(fileID);

load('Table.mat')
