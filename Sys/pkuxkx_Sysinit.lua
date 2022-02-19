--System 初始化导入
dofile(Lua_path.."Sys/pkuxkx_SysTrigger_Timer_Control.lua")
dofile(Lua_path.."Sys/pkuxkx_SysCLKInit.lua")
dofile(Lua_path.."Sys/pkuxkx_SysTrigger_Timer.lua")
dofile(Lua_path.."Sys/pkuxkx_SysEvent.lua")


dofile(Lua_path.."Sys/pkuxkx_Trigger_Timer_Control.lua")
dofile(Lua_path.."Sys/pkuxkx_Trigger_Timer.lua")


dofile(Lua_path.."Sys/SysProcess/process_func.lua")
dofile(Lua_path.."Sys/SysProcess/process_base.lua")

dofile(Lua_path.."Sys/pkuxkx_SysReset.lua")

Log.echo("System 加载成功",1)