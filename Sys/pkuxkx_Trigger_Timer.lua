Pku_Trigger = Pku_Trigger or {}
Pku_Timer = Pku_Timer or {}

function Pku_Trigger.T(substring,code,task)
    local tt = tempTrigger(substring,code)
    Log.echo("New the trigger:"..tostring(tt)..'  Task: '..tostring(task), 5)
    Trigger_control.Add(tt)
    if not (task == 0) then
    end
    return tt
end


