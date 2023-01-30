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

function ComplexTrigger.prototype:tempMultiRegexTrigger(name, regex, code, multiline,line_detla)
    local temp = {name, regex, code, multiline,line_detla,nil}
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,temp)
end

function ComplexTrigger.prototype:enableTrigger()
    for i, v in pairs(self.tri_list) do
        local tRt = tempComplexRegexTrigger(v[1], v[2], v[3], v[4], 0, 0, 0, 0, 0, 0, 0, 0, v[5])
        v[6] = tRt
    end

end

function ComplexTrigger.prototype:disableTrigger()
    for i, v in pairs(self.tri_list) do
        if v[6] ~= nil then
        if ((killTrigger(v[6])) ~=false) then
            self.tri_num = self.tri_num - 1 end
        end
    end
end

function ComplexTrigger.prototype:killTrigger()

    for i, v in pairs(self.tri_list) do
        if v[6] ~= nil then
        if((killTrigger(v[6])) ~= false) then
            self.tri_num = self.tri_num - 1 end
    end
end
end
