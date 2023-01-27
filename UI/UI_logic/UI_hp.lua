--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 04:42:47
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-27 10:56:03
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_hp.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

HP_UI = HP_UI or {}

registerAnonymousEventHandler("HP_update", "HP_update")

function HP_update(event)
    pkuxkx_cmd.add_string_normal("hpbrief")
  end

function HP_UI.update()
    GUI.Jingshen:setValue(100, 100)
    GUI.Xueqi:setValue(100, 100)
    GUI.Jingli:setValue(100, 100)
    GUI.Neili:setValue(100, 100)
    GUI.Shiwu:setValue(100, 100)
    GUI.Yinshui:setValue(100,100)
end

function HP_UI.data_capture()
    Log.echo("HP data capture ! \n", 5)
end

HP_UI.task = Task:new(nil, "HP_UI")

HP_UI.trigger = ComplexTrigger:new(nil, "HP UI task")
HP_UI.timmer = Timer:new(nil, "HP UI timer")

HP_UI.trigger:tempMultiRegexTrigger("HP_capture_tri","^#([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+)$",[[ HP_UI.data_capture() ]],3,3)



HP_UI.timmer:tempTimer(Pkuxkx_HP_UI_Auto_time,
                       function() raiseEvent("HP_update") end,
                       true)

HP_UI.task:add_tri_obj(HP_UI.trigger)
HP_UI.task:add_timer_obj(HP_UI.timmer)
HP_UI.task:start()
UI_task_list:add_task_obj(HP_UI.task)
