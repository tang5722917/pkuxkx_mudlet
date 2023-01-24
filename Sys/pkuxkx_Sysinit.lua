--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-09-05 19:06:31
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-06 08:34:34
FilePath: /mudlet_-auto-robot/Sys/pkuxkx_Sysinit.lua
Description: Sys lua import
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]
--System 初始化导入
dofile(Lua_path.."Sys/SysFun/pkuxkx_SysFun_table.lua")
dofile(Lua_path.."Sys/SysFun/pkuxkx_Trigger_Base.lua")

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
