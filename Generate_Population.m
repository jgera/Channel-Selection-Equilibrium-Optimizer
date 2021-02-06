function Population = Generate_Population(cnt,PopulationSize)
num_channels = size(cnt,2);

Population = zeros(PopulationSize,2);

for p=1:PopulationSize
    nch = 2;  % 2 Channels at a time
    %Pop = randi([1 num_channels],1,nch);
    Pop = randperm(num_channels,nch);
    Population(p,1:length(Pop)) = Pop;
end


end