--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:19:48
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 20:40:26
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_SysReset.lua
Description:Reset the lua script
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

function SysReset()
    Systimer_control.KillAll ()
    Systrigger_control.KillAll()
    Task_reset()
    UI_reset()
end
