--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-25 02:51:14
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-25 02:51:35
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Sys_status.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

-- show all stats



function pkuxkx_show_trigger_timer()

-- triggers can have many patterns, so let's check that as well
local patterns = getProfileStats().triggers.patterns.active
local triggers = getProfileStats().triggers.active
cecho(f"<PaleGreen>We have <SlateGrey>{patterns}<PaleGreen> active patterns within <SlateGrey>{triggers}<PaleGreen> triggers!\n")
local timers_active = getProfileStats().timers.active
local timers_total = getProfileStats().timers.total
cecho(f"<PaleGreen>We have <SlateGrey>{timers_active}<PaleGreen> active timer within <SlateGrey>{timers_total}<PaleGreen> total timer!\n")

end
