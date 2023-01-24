--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 04:42:47
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 20:15:05
FilePath: \mudlet_-auto-robot\Task\Task_Sys\pkuxkx_Task_Base.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]



-- 元类

Task = {tri_obj_list = {},tri_obj_num = 0, timer_obj_list = {}, timer_obj_num=0,task_name = nil}

--- 类的方法
function Task:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.task_name = name or "default_task_name"
    self.tri_obj_list = {}
    self.tri_obj_num = 0
    self.timer_obj_list = {}
    self.timer_obj_num = 0
    return o
end

function Task:add_tri_obj(tri_obj)
    self.tri_obj_num = self.tri_obj_num + 1
    table.insert(self.tri_obj_list,tri_obj)
end

function Task:enable_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:enableTrigger()
    end
end

function Task:disable_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:disableTrigger()
    end
end

function Task:kill_tri_obj()
    for i, v in pairs(self.tri_obj_list) do
        v:killTrigger(v)
    end
end

function Task:start()
    self:enable_tri_obj()
    Log.echo("Gen Task ".. self.task_name .." trigger/timer start \n", 5)
end

function Task:stop()
    self:disable_tri_obj()
    Log.echo("Gen Task ".. self.task_name .." trigger/timer stop \n", 5)
end

function Task:kill()
    self:kill_tri_obj()
    Log.echo("Gen Task ".. self.task_name .." trigger/timer kill \n", 5)
end
