-- 非System 触发控制

Timer_control = Timer_control or {}
Trigger_control = Trigger_control or {}

--系统触发队列
Timer_control.Timer_queue = {}
Trigger_control.Trigger_queue = {}


--向系统定时队列添加触发
function Timer_control.Add ( tr_num )
    Log.echo("Add the timer:"..tostring(tr_num), 5)
    table.insert (Timer_control.Timer_queue,tr_num)
end

--清空系统定时队列
function Timer_control.KillAll ()
    Log.echo("The number of timer: "..#Timer_control.Timer_queue,5)
    for i, v in pairs(Timer_control.Timer_queue) do
        Log.echo("Kill the timer:"..tostring(v), 5)
        killTimer(v)
        table.remove(Timer_control.Timer_queue,-1)
    end
end

--停止所有定时队列
function Timer_control.DisableAll ()
    Log.echo("The number of timer: "..#Timer_control.Timer_queue,5)
    for i, v in pairs(Timer_control.Timer_queue) do
        Log.echo("Disable the timer:"..tostring(v), 5)
        disableTimer(v)
    end
end

--开始所有定时队列
function Timer_control.EnableAll ()
    Log.echo("The number of timer: "..#Timer_control.Timer_queue,5)
    for i, v in pairs(Timer_control.Timer_queue) do
        Log.echo("Enable the timer:"..tostring(v), 5)
        enableTimer(v)
    end
end

--向系统触发队列添加触发
function Trigger_control.Add ( tr_num )
    Log.echo("Add the trigger:"..tostring(tr_num), 5)
    table.insert (Trigger_control.Trigger_queue,tr_num)
end

--清空系统触发队列
function Trigger_control.KillAll ()
    Log.echo("The number of trigger: "..#Trigger_control.Trigger_queue,5)
    for i, v in pairs(Trigger_control.Trigger_queue) do
        Log.echo("Kill the trigger:"..tostring(v), 5)
        killTrigger(v)
        table.remove(Trigger_control.Trigger_queue,-1)
    end
end

--停止所有系统触发队列
function Trigger_control.DisableAll ()
    Log.echo("The number of trigger: "..#Trigger_control.Trigger_queue,5)
    for i, v in pairs(Trigger_control.Trigger_queue) do
        Log.echo("Disable the trigger:"..tostring(v), 5)
        disableTrigger(v)
    end
end

--开始所有系统触发队列
function Trigger_control.EnableAll ()
    Log.echo("The number of trigger: "..#Trigger_control.Trigger_queue,5)
    for i, v in pairs(Trigger_control.Trigger_queue) do
        Log.echo("Enable the trigger:"..tostring(v), 5)
        enableTrigger(v)
    end
end