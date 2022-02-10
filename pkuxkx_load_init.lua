--
--  功能：载入Lua配置文件

--auto robot 初始化文件
dofile(Lua_path.."Init/pkuxkx_init.lua")

--玩家配置文件
dofile(Lua_path.."pkuxkx_config.lua")

-- 地图功能文件
-- 门派相关文件
-- 世界任务相关文件
-- 物品相关文件

function SysReset()
    Systimer_control.KillAll ()
    Systrigger_control.KillAll ()
end