Log = Log or {}

function Log.echo(str, rank)
    if (rank == 0) then
        cecho("<red>"..str)
    end
    if (rank == 1) then
        cecho("<yellow>"..str)
    end
end
