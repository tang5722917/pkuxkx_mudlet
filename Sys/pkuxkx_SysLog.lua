Log = Log or {}

function Log.echo(str, rank)
    if (rank == 0) then
        if(Pkuxkx_Debug_enable <= 5) then
            cecho("<red>"..str..'\n') end
    end
    if (rank == 1) then
        if(Pkuxkx_Debug_enable <=4 ) then
            cecho("<yellow>"..str..'\n') end
    end
    if (rank == 2) then
        if(Pkuxkx_Debug_enable <=3 ) then
            cecho("<cyan>"..str..'\n') end
    end
    if (rank == 3) then
        if(Pkuxkx_Debug_enable <=2 ) then
            cecho("<green>"..str..'\n') end
    end
    if (rank == 4) then
        if(Pkuxkx_Debug_enable <=1 ) then
            cecho("<purple>"..str..'\n') end
    end
    if (rank == 5) then
        if(Pkuxkx_Debug_enable <=0 ) then
            echo(str..'\n') end
    end
end
