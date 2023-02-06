--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-31 06:01:59
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-02 08:56:50
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Complex_Trigger.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]


-- 复杂触发类
-- 不包括expireAfter 参数
Trigger_Base:subclass("ComplexTrigger")
ComplexTrigger.prototype.TriggerNameNum = 0

--- 类的方法

function ComplexTrigger.prototype:tempMultiRegexTrigger(name, regex, code, multiline, fire_length,line_detla)
    self.TriggerNameNum = self.TriggerNameNum + 1
    local TriggerName = "CT"..self.TriggerNameNum
    local temp = {name, regex, code, multiline,fire_length,line_detla,TriggerName}
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,temp)
end

function ComplexTrigger.prototype:enableTrigger()
    for i, v in ipairs(self.tri_list) do
        if tempComplexRegexTrigger(v[1], v[2], v[3], v[4], 0, 0, 0, 0, 0, 0, 0, v[5],v[6]) == false then
            Log.echo("Create Trigger False",1)
        end
    end
end

function ComplexTrigger.prototype:disableTrigger()
    for i, v in ipairs(self.tri_list) do
        if ((killTrigger(v[1])) ~=false) then
            self.tri_num = self.tri_num - 1 end
        end
end

function ComplexTrigger.prototype:killTrigger()

    for i, v in ipairs(self.tri_list) do
            if ((killTrigger(v[1])) ~= false) then
            self.tri_num = self.tri_num - 1 end
    end
end
