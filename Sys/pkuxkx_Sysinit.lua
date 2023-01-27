--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:22:56
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-27 05:25:30
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_Sysinit.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

--System 初始化导入
dofile(Lua_path.."Sys/SysFun/pkuxkx_SysFun_table.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Trigger_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Complex_Trigger.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Timer_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Task_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Task_Control.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Sys_status.lua")


dofile(Lua_path.."Sys/pkuxkx_SysTrigger_Timer_Control.lua")
dofile(Lua_path.."Sys/pkuxkx_SysCLKInit.lua")
dofile(Lua_path.."Sys/pkuxkx_SysTrigger_Timer.lua")
dofile(Lua_path.."Sys/pkuxkx_SysEvent.lua")
dofile(Lua_path.."Sys/pkuxkx_send.lua")

dofile(Lua_path.."Sys/SysProcess/process_func.lua")
dofile(Lua_path.."Sys/SysProcess/process_base.lua")
dofile(Lua_path.."Sys/pkuxkx_SysKey.lua")
dofile(Lua_path.."Sys/pkuxkx_SysAlias.lua")


Log.echo("System 加载成功",1)
