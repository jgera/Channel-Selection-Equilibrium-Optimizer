fileID = fopen('fd.txt','r');
C = textscan(fileID,'%s\n');
fclose(fileID);
Ch = C{1,1};

%% 

keySet = unique(Ch);
valueSet = zeros(length(unique(Ch)),1)
M = containers.Map(keySet,valueSet)

%%

for i=1:length(Ch)
   M(Ch{i}) = M(Ch{i}) + 1; 
end

%%

v = M.values;
v = [v{1:end}]

%%
bar(v)
set(gca,'XTickLabel',M.keys)
