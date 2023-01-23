


-- 元类

Trigger = {tri_list = {},tri_num = 0, tri_name = nil}

--- 类的方法

function Trigger:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.tri_name = name or "default_trigger_name"
    self.tri_list = {}
    self.tri_num = 0
    return o
end

function Trigger:tempRegexTrigger(regex,code,expireAfter)
    expireAfter = expireAfter or 1
    local tRt = tempRegexTrigger(regex, code, expireAfter)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end

function Trigger:tempTrigger(substring,code,expireAfter)
    expireAfter = expireAfter or 1
    local tRt = tempTrigger(substring, code, expireAfter)
    self.tri_num = self.tri_num + 1
    table.insert(self.tri_list,tRt)
end

function Trigger:enableTrigger()
    for i, v in pairs(self.tri_list) do
        enableTrigger(v)
    end
end

function Trigger:disableTrigger()
    for i, v in pairs(self.tri_list) do
        disableTrigger(v)
    end
end

function Trigger:killTrigger()
    for i, v in pairs(self.tri_list) do
        killTrigger(v)
    end
end
