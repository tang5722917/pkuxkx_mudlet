--
--功能：脚本初始
--
--SysTrigger

--Debug 功能
Pkuxkx_Debug_enable = 0
Pkuxkx_Debug_log_folder = ""
Pkuxkx_Debug_log_rank = 0

-- 系统时钟设置
Pkuxkx_fast_time = 0.1      --0.1s  系统处理节拍
Pkuxkx_normal_time = 0.5    --0.5  一般send指令节拍
Pkuxkx_slow_time = 1        --1s  系统处理节拍
Pkuxkx_slow_time1 = 60      --1min  监测节拍
Pkuxkx_slow_time2 = 600     --10min  监测节拍
Pkuxkx_slow_time3 = 3600    --1h  监测节拍



--加载日志功能
dofile(Lua_path.."Sys\\pkuxkx_SysLog.lua")
--加载核心功能
dofile(Lua_path.."Sys\\pkuxkx_Sysinit.lua")
--加载系统快捷键
--加载UI
--加载数据库



Log.echo("脚本重新加载成功",0)