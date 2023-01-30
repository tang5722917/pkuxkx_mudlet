--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-30 08:34:12
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-30 08:51:37
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_logic_init.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 04:42:47
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 21:41:44
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_logic_init.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

UI_task_list = Task_list("UI task list")

dofile(Lua_path .. "UI/UI_logic/UI_hp.lua")

function UI_reset()
    UI_task_list:task_kill()
    Log.echo("UI Task Kill成功",3)
end
