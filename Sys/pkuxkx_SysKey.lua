--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-09-06 08:32:35
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-06 08:33:59
FilePath: /mudlet_-auto-robot/Sys/pkuxkx_SysKey.lua
Description:System Sky setting
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]

Sys_ResetKey = tempKey(mudlet.keymodifier.Control,mudlet.key.X, [[echo("Reset lua env") resetProfile()]])
Sys_ReloadKey = tempKey(mudlet.keymodifier.Control,mudlet.key.Z, [[echo("重新加载Lua脚本\n") raiseEvent("ReLoadEvent")]])

function SysKey_KillAll()
    killKey(Sys_ResetKey)
    killKey(Sys_ReloadKey)
end
