Log = Log or {}

function Log.echo(str, rank)
    if (rank == 0) then
        cecho("<red>"..str..'\n')
    end
    if (rank == 1) then
        cecho("<yellow>"..str..'\n')
    end
    if (rank == 5) then
        echo(str..'\n')
    end
end
