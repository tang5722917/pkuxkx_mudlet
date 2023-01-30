--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-30 08:34:12
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-30 23:38:06
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Task_Control.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]

-- 元类

Object:subclass("Task_list")

Task_list.prototype.task_obj_list = {}
Task_list.prototype.task_obj_num = 0

--- 类的方法
function Task_list:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.task_obj_list = {}
    instance.task_obj_num = 0
end


function Task_list.prototype:add_task_obj(task_obj)
    self.task_obj_num = self.task_obj_num + 1
    table.insert(self.task_obj_list,task_obj)
end

function Task_list.prototype:task_kill()
    Log.echo("kill task :"..self.name.."\n",4)
    for i, v in pairs(self.task_obj_list) do
        v:kill()
    end
end
