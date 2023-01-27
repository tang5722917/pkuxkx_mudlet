--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-27 05:05:21
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-27 11:06:46
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Complex_Trigger.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

-- 复杂触发类
-- 不包括expireAfter 参数

ComplexTrigger = Trigger_Base:new()
-- Derived class method new
function ComplexTrigger:new (o,name)
    o = o or Trigger_Base:new(o,name)
    setmetatable(o, self)
    self.__index = self
    return o
  end

function ComplexTrigger:tempMultiRegexTrigger(name, regex, code, multiline,line_detla)
    local tRt = tempComplexRegexTrigger(name, regex, code, multiline, 0, 0, 0, 0, 0, 0, 0, 0, line_detla)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end

function ComplexTrigger:enableTrigger()
    for i, v in pairs(self.tri_list) do

    end
end

function ComplexTrigger:disableTrigger()
    for i, v in pairs(self.tri_list) do
        killTrigger(v)
        self.tri_num = self.tri_num -1
    end
end
