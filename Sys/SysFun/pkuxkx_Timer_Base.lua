--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-30 08:34:12
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-30 23:39:25
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_Timer_Base.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]


-- 元类
Object:subclass("Timer")

Timer.prototype.timer_list = {}
Timer.prototype.timer_num= 0

--- 类的方法

function Timer:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.timer_list = {}
    instance.timer_num= 0
end


function Timer.prototype:tempTimer(time,code,repeating)
    repeating = repeating or false
    local tRt = tempTimer(time, code, repeating)
    self.timer_num = self.timer_num + 1
    table.insert(self.timer_list,tRt)
end

function Timer.prototype:enableTimer()
    for i, v in pairs(self.timer_list) do
        enableTimer(v)
    end
end

function Timer.prototype:disableTimer()
    for i, v in pairs(self.timer_list) do
        disableTimer(v)
    end
end

function Timer.prototype:killTimer()
    for i, v in pairs(self.timer_list) do
        killTimer(v)
    end
end
