--
--功能：脚本初始
--
--SysTrigger
--初始化系统配置文件
dofile(Lua_path.."init/pkuxkx_init_config.lua")
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