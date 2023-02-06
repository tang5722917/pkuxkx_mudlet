--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-31 06:01:59
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-06 20:46:04
FilePath: \mudlet_-auto-robot\User\pkuxkx_user_Base.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]

-- 玩家状态类

Object:subclass("User")

function User:new(instance)
    self.super:new(instance)  --执行父类的构造内容
    instance.upper_jingshen = 0 -- 精神上限
    instance.max_jingshen = 0 --最大精神
    instance.cur_jingshen = 0 --精神
    instance.upper_xueqi = 0   -- 气血上限
    instance.max_xueqi = 0    --最大气血
    instance.cur_xueqi = 0    --气血
    instance.max_jingli = 0   --最大精力
    instance.cur_jingli = 0   --精力
    instance.max_neili = 0    --最大内力
    instance.cur_neili = 0    --内力
    instance.cur_shiwu = 0    --食物
    instance.max_shiwu = 300
    instance.cur_yinshui = 0 --饮水
    instance.max_yinshui = 300
    instance.exp = 0
    instance.qianneng = 0
    instance.zhenqi = 0
    instance.zhanyi = 0
    instance.zhan = 0
    instance.mang = 0
    instance.user_menpai = nil --玩家门派
end
--- 类的方法
