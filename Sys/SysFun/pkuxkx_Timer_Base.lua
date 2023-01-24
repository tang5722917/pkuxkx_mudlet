--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 22:26:31
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 22:26:53
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Timer_Base.lua
Description:
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

-- 元类

Timer = {timer_list = {},timer_num = 0, timer_name = nil}

--- 类的方法

function Timer:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.timer_name = name or "default_timer_name"
    self.timer_list = {}
    self.timer_num= 0
    return o
end

function Timer:tempTimer(time,code,repeating)
    repeating = repeating or false
    local tRt = tempTimer(time, code, repeating)
    self.timer_num = self.timer_num + 1
    table.insert(self.timer_list,tRt)
end

function Timer:enableTimer()
    for i, v in pairs(self.timer_list) do
        enableTimer(v)
    end
end

function Timer:disableTimer()
    for i, v in pairs(self.timer_list) do
        disableTimer(v)
    end
end

function Timer:killTimer()
    for i, v in pairs(self.timer_list) do
        killTimer(v)
    end
end
