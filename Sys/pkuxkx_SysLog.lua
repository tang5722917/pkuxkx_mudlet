Log = Log or {}

function Log.echo(str, rank)
    if (rank == 0) then
        if(Pkuxkx_Debug_log_rank >= rank) then
            cecho("<red>"..str..'\n') end
    end
    if (rank == 1) then
        if(Pkuxkx_Debug_log_rank >= rank ) then
            cecho("<yellow>"..str..'\n') end
    end
    if (rank == 2) then
        if(Pkuxkx_Debug_log_rank >= rank ) then
            cecho("<cyan>"..str..'\n') end
    end
    if (rank == 3) then
        if(Pkuxkx_Debug_log_rank >= rank ) then
            cecho("<green>"..str..'\n') end
    end
    if (rank == 4) then
        if(Pkuxkx_Debug_log_rank >= rank ) then
            cecho("<purple>"..str..'\n') end
    end
    if (rank == 5) then
        if(Pkuxkx_Debug_log_rank >= rank ) then
            echo(str..'\n') end
    end
end
