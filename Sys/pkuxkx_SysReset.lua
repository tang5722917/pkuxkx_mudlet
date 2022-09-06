--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-09-05 03:19:31
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-09-06 08:19:05
FilePath: /mudlet_-auto-robot/Sys/pkuxkx_SysReset.lua
Description: Reset the lua script
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]
function SysReset()
    Systimer_control.KillAll ()
    Systrigger_control.KillAll()
end
