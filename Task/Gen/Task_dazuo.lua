--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-08-25 20:21:21
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-05 02:12:10
FilePath: /mudlet_-auto-robot/Task/Gen/Task_dazuo.lua
Description:
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]
Task_dazuo = Task_dazuo or {}
Task_dazuo.times = 0

Task_dazuo.trigger = Trigger:new(nil,"dazuo")


registerAnonymousEventHandler("Task_dazuo_StartEvent", "Task_dazuo_StartEvent")
registerAnonymousEventHandler("Task_dazuo_StopEvent", "Task_dazuo_StopEvent")

function Task_dazuo.stop()
  Task_dazuo.trigger:disableTrigger()
  end

  function Task_dazuo.start()
    Task_dazuo.trigger:enableTrigger()
    Log.echo("Task_dazuo trigger start ", 4)
  end

  function Task_dazuo_StopEvent(event)
    if (Task_dazuo.times <= 1) then
      Task_dazuo.stop()
      Log.echo("\n Task_dazuo task times expire \n", 4)
      Log.echo("Task_dazuo trigger stop \n", 4)
    end
    Task_dazuo.times = Task_dazuo.times - 1
  end

  function Task_dazuo_StartEvent(event, times)
    pkuxkx_cmd.add_string_normal("dz")
    if (times > 1) then
      Task_dazuo.start()
      Task_dazuo.times = times
    end
    Log.echo("Task_dazuo task times set "..times, 4)
  end

  

  Task_dazuo.trigger:tempTrigger("你的内力增加了！！",function() pkuxkx_cmd.add_string_normal('dz') 
    raiseEvent('Task_dazuo_StopEvent') 
    end)

  Task_dazuo.trigger:tempTrigger("你感觉内力充盈，显然内功又有进境。",function()
  pkuxkx_cmd.add_string_normal("dz") raiseEvent("Task_dazuo_StopEvent")
  end)

  Task_dazuo.trigger:tempTrigger("你将运转于全身经脉间的内息收回丹田，深深吸了口气，站了起来。",function()
  pkuxkx_cmd.add_string_normal("dz") raiseEvent("Task_dazuo_StopEvent")
  end)
Task_dazuo.stop()
