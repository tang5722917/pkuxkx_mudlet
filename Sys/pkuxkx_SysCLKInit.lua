sys_timer_config = sys_timer_config or {}
--0.1s  系统处理节拍
sys_timer_config.cmd_timer_fast = tempTimer(0.1,function() raiseEvent("CMD_clk_event_fast", true) end, true)
--0.5s  一般send指令节拍
sys_timer_config.cmd_timer_normal = tempTimer(0.5,function() raiseEvent("CMD_clk_event_normal", true) end, true)
-- 1s 系统处理节拍
sys_timer_config.cmd_timer_slow = tempTimer(1,function() raiseEvent("CMD_clk_event_slow", true) end, true)
-- 1 min 监测节拍
sys_timer_config.cmd_timer_slow1 = tempTimer(60,function() raiseEvent("CMD_clk_event_slow", true) end, true)
-- 10 min 监测节拍
sys_timer_config.cmd_timer_slow2 = tempTimer(600,function() raiseEvent("CMD_clk_event_slow", true) end, true)
-- 1h 监测节拍
sys_timer_config.cmd_timer_slow3 = tempTimer(3600,function() raiseEvent("CMD_clk_event_slow", true) end, true)





Log.echo("系统时钟加载成功\n",0)
