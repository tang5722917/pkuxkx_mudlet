Task_dazuo = Task_dazuo or {}
Task_dazuo.times = 0

registerAnonymousEventHandler("Task_dazuo_StartEvent", "Task_dazuo_StartEvent")
registerAnonymousEventHandler("Task_dazuo_StopEvent", "Task_dazuo_StopEvent")
function Task_dazuo.stop()
  disableTrigger(Task_dazuo.tr1) disableTrigger(Task_dazuo.tr2) disableTrigger(Task_dazuo.tr3) 
  Log.echo("Task_dazuo trigger stop ", 3)
  end
  
  function Task_dazuo.start()
    enableTrigger(Task_dazuo.tr1) enableTrigger(Task_dazuo.tr2) enableTrigger(Task_dazuo.tr3) 
    Log.echo("Task_dazuo trigger start ", 3)
  end
  
  function Task_dazuo_StopEvent(event)
    if times == 0 then
      Task_dazuo.stop()
      Log.echo("Task_dazuo task times expire ", 2)
    end
    times = times -1
  end
  
  function Task_dazuo_StartEvent(event, times)
    pkuxkx_cmd.add_string_normal("dz")
    Task_dazuo.start()
    Task_dazuo.times = 1
    Log.echo("Task_dazuo task times set "..times, 2)
  end



Task_dazuo.tr1=tempTrigger("你的内力增加了！！",function() 
  pkuxkx_cmd.add_string_normal("dz") raiseEvent("Task_dazuo_StopEvent")
  end)

Task_dazuo.tr2=tempTrigger("你感觉内力充盈，显然内功又有进境。",function() 
  pkuxkx_cmd.add_string_normal("dz") raiseEvent("Task_dazuo_StopEvent")
  end)
  
Task_dazuo.tr3=tempTrigger("你将运转于全身经脉间的内息收回丹田，深深吸了口气，站了起来。",function() 
  pkuxkx_cmd.add_string_normal("dz") raiseEvent("Task_dazuo_StopEvent")
  end)
Task_dazuo.stop()

