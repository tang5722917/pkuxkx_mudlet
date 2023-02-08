--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:19:48
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-09 03:46:32
FilePath: \mudlet_-auto-robot\Sys\SysProcess\process_base.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
Pkuxkx_Sys = Pkuxkx_Sys or {}

Pkuxkx_Sys.Task_list = Task_list("pkuxkx System task list")
Log.echo("Build pkuxkx System task list", 1)

Pkuxkx_Sys.Init_task = Task("pkuxkx System initial task")
Log.echo("Build pkuxkx System initial task", 1)

Pkuxkx_Sys.Init_timer = Timer("pkuxkx System initial timer")

Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_fast_time,function() raiseEvent("CMD_clk_event_fast", true) end, true)
--  一般send指令节拍
Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_normal_time,function() raiseEvent("CMD_clk_event_normal", true) end, true)
--   系统处理节拍
Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_slow_time,function() raiseEvent("CMD_clk_event_slow", true) end, true)
--   监测节拍
Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_slow_time1,function() raiseEvent("CMD_clk_event_slow1", true) end, true)
--   监测节拍
Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_slow_time2,function() raiseEvent("CMD_clk_event_slow2", true) end, true)
--   监测节拍
Pkuxkx_Sys.Init_timer:tempTimer(Pkuxkx_slow_time3,function() raiseEvent("CMD_clk_event_slow3", true) end, true)

Pkuxkx_Sys.Init_task:add_timer_obj(Pkuxkx_Sys.Init_timer)
Log.echo("系统时钟加载成功", 1)

Pkuxkx_Sys.Init_task:start()
Log.echo("系统初始任务启动", 1)
