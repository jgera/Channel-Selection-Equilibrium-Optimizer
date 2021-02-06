function F = Fisher(SW,SB)

    if(length(SW) > length(SB))
        SW = SW(1:length(SB));
    end
    
    if (length(SB) > length(SW))
        SB = SB(1:length(SW));
    end

    F = SW / SB;
end