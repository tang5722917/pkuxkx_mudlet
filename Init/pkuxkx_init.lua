--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-31 06:01:59
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-31 07:30:02
FilePath: \mudlet_-auto-robot\Init\pkuxkx_init.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
--
--功能：脚本初始
--
--SysTrigger
--初始化系统配置文件
dofile(Lua_path .. "Init/pkuxkx_init_config.lua")
--加载日志功能
dofile(Lua_path.."Sys/pkuxkx_SysLog.lua")
--加载核心功能
dofile(Lua_path .. "Sys/pkuxkx_Sysinit.lua")
-- 加载玩家定义
dofile(Lua_path .. "User/pkuxkx_user_init.lua")
--加载系统快捷键

--加载任务系统
dofile(Lua_path.."Task/pkuxkx_Task_init.lua")
--加载地图系统
dofile(Lua_path.."MAP/pkuxkx_map_init.lua")
--加载UI
dofile(Lua_path.."UI/pkuxkx_UI_init.lua")
--加载数据库

if (Pkuxkx_Debug_enable == 1) then
    dofile(Lua_path.."Debug/pkuxkx_Debuginit.lua")
end

Log.echo("脚本重新加载成功\n",1)
