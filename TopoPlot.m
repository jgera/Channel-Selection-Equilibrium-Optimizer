addpath('topology')

ch_list =  'all' %{'Fpz','Fz','Cz','Pz','Oz'};
make_contour = 1
system ='10-20';
INTERP_POINTS = 1000
plot_channels = 1, plot_clabels = 1
plot_topography(ch_list, rand(1,83),make_contour,system,plot_channels,plot_clabels,INTERP_POINTS)


%%
ch_list =  {'Fpz','Fz','Cz','Pz','Oz'};
make_contour = 0
system ='10-20';
INTERP_POINTS = 1000
plot_channels = 1, plot_clabels = 1
plot_topography(ch_list, rand(1,length(ch_list)),make_contour,system,plot_channels,plot_clabels,INTERP_POINTS)
title('Selected EEG Channels')
%%

% ch_list =  nfo.clab(Channels);
% make_contour = 0
% system ='10-20';
% INTERP_POINTS = 1000
% plot_channels = 1, plot_clabels = 1
% plot_topography(ch_list, rand(1,length(ch_list)),make_contour,system,plot_channels,plot_clabels,INTERP_POINTS)
% title('Selected EEG Channels')