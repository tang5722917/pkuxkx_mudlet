Sys_timer_config = Sys_timer_config or {}
--   系统处理节拍
local temp

temp =  tempTimer(Pkuxkx_fast_time,function() raiseEvent("CMD_clk_event_fast", true) end, true)
Systimer_control.Add(temp)
--  一般send指令节拍
temp = tempTimer(Pkuxkx_normal_time,function() raiseEvent("CMD_clk_event_normal", true) end, true)
Systimer_control.Add(temp)
--   系统处理节拍
temp = tempTimer(Pkuxkx_slow_time,function() raiseEvent("CMD_clk_event_slow", true) end, true)
Systimer_control.Add(temp)
--   监测节拍
temp = tempTimer(Pkuxkx_slow_time1,function() raiseEvent("CMD_clk_event_slow1", true) end, true)
Systimer_control.Add(temp)
--   监测节拍
temp = tempTimer(Pkuxkx_slow_time2,function() raiseEvent("CMD_clk_event_slow2", true) end, true)
Systimer_control.Add(temp)
--   监测节拍
temp = tempTimer(Pkuxkx_slow_time3,function() raiseEvent("CMD_clk_event_slow3", true) end, true)
Systimer_control.Add(temp)



Log.echo("系统时钟加载成功",1)
