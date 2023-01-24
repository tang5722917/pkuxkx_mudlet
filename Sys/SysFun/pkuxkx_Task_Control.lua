--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 20:18:36
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 20:19:58
FilePath: \mudlet_-auto-robot\Task\Task_Sys\pkuxkx_Task_Control.lua
Description: Task 管理基类
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]
-- 元类

Task_list = {task_obj_list = {},task_obj_num = 0,task_name = nil}

--- 类的方法
function Task_list:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.task_name = name or "default task list"
    self.task_obj_list = {}
    self.task_obj_num = 0
    return o
end

function Task_list:add_task_obj(task_obj)
    self.task_obj_num = self.task_obj_num + 1
    table.insert(self.task_obj_list,task_obj)
end

function Task_list:task_kill()
    cecho("kill task :"..self.task_name.."\n")
    for i, v in pairs(self.task_obj_list) do
        v:kill()
    end
end
