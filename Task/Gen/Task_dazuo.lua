--[[
Author: Tangzp tang5722917@163.com
Date: 2023-02-07 05:02:11
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-09 04:06:04
FilePath: \mudlet_-auto-robot\Task\Gen\Task_dazuo.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]


Task_dazuo = {}
Task_dazuo.times = 0

Task_dazuo.trigger = Trigger("dazuo_trigger")
Task_dazuo.task = Task("dazuo")

registerAnonymousEventHandler("Task_dazuo_StartEvent", "Task_dazuo_StartEvent")
registerAnonymousEventHandler("Task_dazuo_StopEvent", "Task_dazuo_StopEvent")


  function Task_dazuo_StopEvent(event)
    if (Task_dazuo.times <= 1) then
      Task_dazuo.task:stop()
      Log.echo("\n Task_dazuo task times expire \n", 4)
      Log.echo("Task_dazuo trigger stop \n", 4)
    end
    Task_dazuo.times = Task_dazuo.times - 1
  end

function Task_dazuo_StartEvent(event, times)
    Log.echo("Task_dazuo task times set "..times, 4)
    pkuxkx_cmd.add_string_normal("dz")
    if (times > 1) then
      Task_dazuo.task:start()
      Task_dazuo.times = times - 1
    end
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

Task_dazuo.task:add_tri_obj(Task_dazuo.trigger)
Task_dazuo.task:stop()
Gen_task_list:add_task_obj(Task_dazuo.task)
