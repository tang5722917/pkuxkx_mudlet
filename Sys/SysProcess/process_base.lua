Process_base = {Process_name ="nil",Process_trigger={},Process_timer={},Process_key={},Process_alias={}}
function Process_base:new(o,Process_name)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.Process_name = Process_name
    return o
end

function Process_base:Process_event(...)

end

function Process_base:delete()
    Control.triggerKill(self.Process_trigger)
    Control.timerKill(self.Process_timer) 
end

function Process_base:add_trigger( temp )
    Log.echo("Add the trigger:"..tostring(tr_num).."Task: "..self.Process_name, 5)
    table.insert (self.Process_trigger,temp)
end
