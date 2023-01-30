--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-27 05:05:21
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-27 21:53:20
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
    local temp = {name, regex, code, multiline,line_detla}
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,temp)
end

function ComplexTrigger:enableTrigger()
    for i, v in pairs(self.tri_list) do
        local tRt = tempComplexRegexTrigger(v[1], v[2], v[3], v[4], 0, 0, 0, 0, 0, 0, 0, 0, v[5])
        echo(v[1].."  "..tRt.."  "..self.tri_num)
    end

end

function ComplexTrigger:disableTrigger()
    for i, v in pairs(self.tri_list) do
        if (killTrigger(v[1]) ~=false) then
            self.tri_num = self.tri_num - 1 end
        end
end

function ComplexTrigger:killTrigger()
    for i, v in pairs(self.tri_list) do
        if(killTrigger(v[1]) ~= false) then
            self.tri_num = self.tri_num - 1 end
    end
end

tempComplexRegexTrigger("HP_capture_tri","^#([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+)$",[[echo("OK") ]],3,0, 0, 0, 0, 0, 0, 0, 0, 3)
