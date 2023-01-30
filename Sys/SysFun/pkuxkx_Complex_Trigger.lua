--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-27 05:05:21
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-27 21:53:20
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Complex_Trigger.lua
Description
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

-- 复杂触发类
-- 不包括expireAfter 参数
Trigger_Base:subclass("ComplexTrigger")
ComplexTrigger.prototype.TriggerNameNum = 0

--- 类的方法

function ComplexTrigger.prototype:tempMultiRegexTrigger(name, regex, code, multiline, line_detla)
    self.TriggerNameNum = self.TriggerNameNum + 1
    local TriggerName = "CT"..self.TriggerNameNum
    local temp = {name, regex, code, multiline,line_detla,TriggerName}
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,temp)
end

function ComplexTrigger.prototype:enableTrigger()
    for i, v in ipairs(self.tri_list) do
        tempComplexRegexTrigger(v[6], v[2], v[3], v[4], 0, 0, 0, 0, 0, 0, 0, 0, v[5])
    end
end

function ComplexTrigger.prototype:disableTrigger()
    for i, v in ipairs(self.tri_list) do
        if ((killTrigger(v[6])) ~=false) then
            self.tri_num = self.tri_num - 1 end
        end
end

function ComplexTrigger.prototype:killTrigger()

    for i, v in ipairs(self.tri_list) do
            if ((killTrigger(v[6])) ~= false) then
            self.tri_num = self.tri_num - 1 end
    end
end
