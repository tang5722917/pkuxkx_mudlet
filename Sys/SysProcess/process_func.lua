--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:19:48
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 01:47:50
FilePath: \mudlet_-auto-robot\Sys\SysProcess\process_func.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]
--清空系统定时队列
Control = Control or {}

function Control.timerKill ( timer_quene )
    Log.echo("The number of process timer: "..#timer_quene,5)
    for i, v in pairs(timer_quene) do
        Log.echo("Kill the timer:"..tostring(v), 5)
        killTimer(v)
        table.remove(timer_quene,-1)
        local temp=table.index_of(Timer_control.Timer_queue, v)
        table.remove(Timer_control.Timer_queue,temp)
    end
end

function Control.triggerKill ( trigger_quene )
    Log.echo("The number of process trigger: "..#trigger_quene,5)
    for i, v in pairs(trigger_quene) do
        Log.echo("Kill the timer:"..tostring(v), 5)
        killTrigger(v)
        table.remove(trigger_quene,-1)
        local temp=table.index_of(Trigger_control.Trigger_queue, v)
        table.remove(Trigger_control.Trigger_queue,temp)
    end
end
