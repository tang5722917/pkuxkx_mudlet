-- System 触发控制

Systimer_control = Systimer_control or {}
Systrigger_control = Systrigger_control or {}
--系统触发队列
Systimer_control.Timer_queue = {}
Systrigger_control.Trigger_queue = {}
--向系统定时队列添加触发
function Systimer_control.Add ( tr_num )
    Log.echo("Add the System timer:"..tostring(tr_num), 5)
    table.insert (Systimer_control.Timer_queue,tr_num)
end

--清空系统定时队列
function Systimer_control.KillAll ()
    Log.echo("The system number of timer: "..#Systimer_control.Timer_queue,5)
    for i, v in pairs(Systimer_control.Timer_queue) do
        Log.echo("Kill the System timer:"..tostring(v), 5)
        killTimer(v)
        table.remove(Systimer_control.Timer_queue,-1)
    end
end

--停止所有定时队列
function Systimer_control.StopAll ()
    Log.echo("The system number of timer: "..#Systimer_control.Timer_queue,5)
    for i, v in pairs(Systimer_control.Timer_queue) do
        Log.echo("Disable the System timer:"..tostring(v), 5)
        disableTimer(v)
    end
end

--开始所有定时队列
function Systimer_control.StopAll ()
    Log.echo("The system number of timer: "..#Systimer_control.Timer_queue,5)
    for i, v in pairs(Systimer_control.Timer_queue) do
        Log.echo("Enable the System timer:"..tostring(v), 5)
        enableTimer(v)
    end
end

--向系统触发队列添加触发
function Systrigger_control.Add ( tr_num )
    Log.echo("Add the System trigger:"..tostring(tr_num), 5)
    table.insert (Systrigger_control.Trigger_queue,tr_num)
end

--清空系统触发队列
function Systrigger_control.KillAll ()
    Log.echo("The system number of trigger: "..#Systrigger_control.Trigger_queue,5)
    for i, v in pairs(Systrigger_control.Trigger_queue) do
        Log.echo("Kill the System trigger:"..tostring(v), 5)
        killTrigger(v)
        table.remove(Systrigger_control.Trigger_queue,-1)
    end
end

--停止所有系统触发队列
function Systrigger_control.KillAll ()
    Log.echo("The system number of trigger: "..#Systrigger_control.Trigger_queue,5)
    for i, v in pairs(Systrigger_control.Trigger_queue) do
        Log.echo("Disable the System trigger:"..tostring(v), 5)
        disableTrigger(v)
    end
end

--开始所有系统触发队列
function Systrigger_control.KillAll ()
    Log.echo("The system number of trigger: "..#Systrigger_control.Trigger_queue,5)
    for i, v in pairs(Systrigger_control.Trigger_queue) do
        Log.echo("Enable the System trigger:"..tostring(v), 5)
        enableTrigger(v)
    end
end