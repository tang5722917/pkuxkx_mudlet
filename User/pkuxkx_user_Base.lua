--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-24 20:02:08
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-01-24 20:12:38
FilePath: \mudlet_-auto-robot\User\pkuxkx_user_Base.lua
Description:玩家角色属性定义基类
Copyright (c) 2023 by Tangzp email: tang5722917@163.com, All Rights Reserved.
--]]

Pkuxkx_user = Pkuxkx_user or {}

User = {
    upper_jingshen = 0, -- 精神上限
    max_jingshen = 0, --最大精神
    cur_jingshen = 0, --精神
    upper_xueqi = 0,   -- 气血上限
    max_xueqi = 0,    --最大气血
    cur_xueqi = 0,    --气血
    max_jingli = 0,   --最大精力
    cur_jingli = 0,   --精力
    max_neili = 0,    --最大内力
    cur_neili = 0,    --内力
    cur_shiwu = 0,    --食物
    max_shiwu = 300,
    cur_yinshui = 0,  --饮水
    max_yinshui = 300,
    user_name = nil
}

function User:new (o, name)
    o = o or {}
    setmetatable(o,self)
    self.__index = self
    self.user_name = name or "default_user"
    return o
end
