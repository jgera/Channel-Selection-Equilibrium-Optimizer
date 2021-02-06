clear
close all
addpath('topology')

%% Parameters
datasetfolder = 'D:\Research\datasets\BCICIV\';
subject = 'b';  % from a to g

MaxBest = 10;
FitnessFunction='Fisher'; %  Corr, Fisher, Combined
Run_no=1;         % Number of independent runs 
Particles_no=100;   % Number of particles
Max_iteration=50; % Maximum number of iterations

%% 
dataset = [datasetfolder 'BCICIV_calib_ds1' subject '.mat']
load(dataset)


Segments = EEG_Split(cnt, mrk)
Class = mrk.y';

%%
sample = Segments{1};
sample2 = Segments{2};
%%

corr2(sample(:,1),sample(:,2))

%%
corr2(double(cnt(:,1)),double(cnt(:,2)))

%%
% figure
% PlotEEG_System(59)
% title('BCI IVa 59 EEG System')
%%
fisher_criteria(sample(:,2),sample(:,1))
%% Run Equilibrium Optimizer

RunEquilibrium



