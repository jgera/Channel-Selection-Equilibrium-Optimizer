function Segments = EEG_Split(cnt, mrk)

Segments = {}
for i=1:length(mrk.pos)
    
    if(i ~= 200)
        segment = double(cnt(mrk.pos(i):mrk.pos(i+1)-1,:));
    else
        segment = double(cnt(mrk.pos(i):end,:));
    end
    Segments{end+1,1} = segment;
end

end