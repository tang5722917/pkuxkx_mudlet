--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 04:42:47
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-29 08:57:23
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Trigger_Base.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]




-- 元类

Trigger_Base = {tri_list = {},tri_num = 0, tri_name = nil}

--- 类的方法

function Trigger_Base:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.tri_name = name or "default_trigger_name"
    self.tri_list = {}
    self.tri_num = 0
    return o
end

function Trigger_Base:enableTrigger()
    for i, v in pairs(self.tri_list) do
        enableTrigger(v)
    end
end

function Trigger_Base:disableTrigger()
    for i, v in pairs(self.tri_list) do
        disableTrigger(v)
    end
end

function Trigger_Base:killTrigger()
    for i, v in pairs(self.tri_list) do
        --echo(v.." HH")
        killTrigger(v)
        self.tri_num = self.tri_num -1
    end
end

-- 基本触发类
-- 不包括expireAfter 参数

Trigger = Trigger_Base:new()
-- Derived class method new
function Trigger:new (o,name)
    o = o or Trigger_Base:new(o,name)
    setmetatable(o, self)
    self.__index = self
    return o
  end


function Trigger:tempRegexTrigger(regex,code)
    local tRt = tempRegexTrigger(regex, code)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end

function Trigger:tempTrigger(substring,code)
    local tRt = tempTrigger(substring, code)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end
