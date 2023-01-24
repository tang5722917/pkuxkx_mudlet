--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:19:48
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-25 02:38:48
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_SysKey.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

Sys_ResetKey = tempKey(mudlet.keymodifier.Control,mudlet.key.X, [[echo("Reset lua env") resetProfile()]])
Sys_ReloadKey = tempKey(mudlet.keymodifier.Control, mudlet.key.Z, [[echo("重新加载Lua脚本\n") raiseEvent("ReLoadEvent")]])
Sys_Test = tempKey(mudlet.keymodifier.Control, mudlet.key.A, [[echo("发出测试指令 \n") raiseEvent("pkuxkx_Test")]])
Sys_Sys = tempKey(mudlet.keymodifier.Control,mudlet.key.S, [[echo("显示Trigger/Timer 数量： \n") pkuxkx_show_trigger_timer() ]])

function SysKey_KillAll()
    killKey(Sys_ResetKey)
    killKey(Sys_ReloadKey)
end
