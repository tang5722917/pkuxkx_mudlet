--[[
Author: Tangzp tang5722917@163.com
Date: 2023-02-07 05:02:11
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-09 03:44:40
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_Sysinit.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]


--System 初始化导入
dofile(Lua_path .. "Sys/SysFun/pkuxkx_SysObject.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Sys_status.lua")
dofile(Lua_path.."Sys/SysFun/pkuxkx_SysFun_table.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Trigger_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Complex_Trigger.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Timer_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Task_Base.lua")
dofile(Lua_path .. "Sys/SysFun/pkuxkx_Task_Control.lua")

dofile(Lua_path .. "Sys/SysProcess/process_base.lua")
dofile(Lua_path.."Sys/SysProcess/process_func.lua")




dofile(Lua_path.."Sys/pkuxkx_SysEvent.lua")
dofile(Lua_path.."Sys/pkuxkx_send.lua")
dofile(Lua_path.."Sys/pkuxkx_SysKey.lua")
dofile(Lua_path.."Sys/pkuxkx_SysAlias.lua")


Log.echo("System 加载成功",1)
