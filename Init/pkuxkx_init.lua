--
--功能：脚本初始
--
--SysTrigger

dofile(Lua_path.."init/pkuxkx_init_config.lua")


--加载日志功能
dofile(Lua_path.."Sys/pkuxkx_SysLog.lua")
--加载核心功能
dofile(Lua_path.."Sys/pkuxkx_Sysinit.lua")
--加载系统快捷键
--加载UI
--加载数据库



Log.echo("脚本重新加载成功\n",0)