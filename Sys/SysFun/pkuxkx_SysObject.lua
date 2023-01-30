--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-30 08:34:46
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-31 00:08:29
FilePath: \mudlet_-auto-robot\Sys\SysFun\pkuxkx_SysObject.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
-- https://www.jianshu.com/p/b538e5d9a871

-- 定义类型
Object = {};

-- 设置__index元方法
Object.__index = Object

-- 定义类型属性
Object.ClassName = "Object Base class"
Object.objCount = 0

-- 定义构造函数
-- 对象构造器
local ObjectConstructor = {};
ObjectConstructor.__call = function (type,name)

    local instance = {};
    setmetatable(instance, type.prototype);
    instance.name = name or "Instance default name";
    Object.objCount = Object.objCount + 1
    type:new(instance)
    return instance
end

Object.__call = ObjectConstructor.__call;
setmetatable(Object, ObjectConstructor);

-- 建立并返回子类
function Object:subclass(typeName)
    -- 调用父类方法时需要使用Class.super.prototype.function(self, params)形式。
    -- 以传入类型名称作为全局变量名称创建table

    _G[typeName] = {};

    -- 设置元方法__index,并绑定父级类型作为元表
    local subtype = _G[typeName];
    subtype.super = self;
    subtype.__call = ObjectConstructor.__call;
    subtype.__index = subtype;
    setmetatable(subtype, self);
    subtype.ClassName = typeName

    -- 创建prototype并绑定父类prototype作为元表
    subtype.prototype = {};
    subtype.prototype.__index = subtype.prototype;
    subtype.prototype.__gc = self.prototype.__gc;
    subtype.prototype.__tostring = self.prototype.__tostring;
    setmetatable(subtype.prototype, self.prototype);
    return subtype;

end

-- 定义类方法
function Object:new(instance)
  -- 具体类中重载
end

function Object:outputObjectInfo(object)
  return {self.ClassName,object.name,self.objCount};
end


-- 定义类型的prototype
Object.prototype = {};

-- 设置prototype的__index元方法
Object.prototype.__index = Object.prototype;

-- 设置prototype的__gc元方法
Object.prototype.__gc = function (instance)
  Object.objCount = Object.objCount - 1
end



-- 定义实例对象属性
Object.prototype.name = "Instance default name";


-- 定义实例对象方法
function Object.prototype:printName()
  return self.name;
end
