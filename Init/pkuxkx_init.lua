--
--功能：脚本初始
--

--Debug 功能
pkuxkx_Debug_enable = 0
pkuxkx_Debug_log_folder = ""
pkuxkx_Debug_log_rank = 0

--
--加载日志功能
dofile(Lua_path.."Sys\\pkuxkx_SysLog.lua")
--加载核心功能
dofile(Lua_path.."Sys\\pkuxkx_Sysinit.lua")
--加载系统快捷键
--加载UI
--加载数据库



Log.echo("脚本重新加载成功\n",0)