--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 04:42:47
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 21:41:44
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_logic_init.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

UI_task_list = Task_list:new(nil,"UI task list")

dofile(Lua_path .. "UI/UI_logic/UI_hp.lua")

function UI_reset()
    UI_task_list:task_kill()
end
