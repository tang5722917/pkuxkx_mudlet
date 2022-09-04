--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-08-25 20:21:21
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-05 02:29:33
FilePath: /mudlet_-auto-robot/Init/pkuxkx_init.lua
Description:
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]
--
--功能：脚本初始
--
--SysTrigger
--初始化系统配置文件
dofile(Lua_path.."Init/pkuxkx_init_config.lua")
--加载日志功能
dofile(Lua_path.."Sys/pkuxkx_SysLog.lua")
--加载核心功能
dofile(Lua_path.."Sys/pkuxkx_Sysinit.lua")
--加载系统快捷键
--加载UI
--加载数据库

if (Pkuxkx_Debug_enable == 1) then
    dofile(Lua_path.."Debug/pkuxkx_Debuginit.lua")
end

Log.echo("脚本重新加载成功\n",1)
