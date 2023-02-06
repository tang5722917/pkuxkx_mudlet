--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-31 06:01:59
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-06 09:07:50
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_hp.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]


Pkuxkx_HP_UI = {}

registerAnonymousEventHandler("HP_update", "Pkuxkx_HP_UI.update")

function Pkuxkx_HP_UI.update(event)
    Pkuxkx_HP_UI.task.data[1] = 0
    Pkuxkx_HP_UI.task.data[2] = {}
    pkuxkx_cmd.add_string_normal("hpbrief")
  end

function Pkuxkx_HP_UI.UI_update(UI_data)
    Pkuxkx_user.cur_user.upper_jingshen = tonumber(UI_data[2][5]) -- 精神上限
    Pkuxkx_user.cur_user.max_jingshen = tonumber(UI_data[2][6]) --最大精神
    Pkuxkx_user.cur_user.cur_jingshen = tonumber(UI_data[2][7]) --精神
    Pkuxkx_user.cur_user.upper_xueqi = tonumber(UI_data[2][2])   -- 气血上限
    Pkuxkx_user.cur_user.max_xueqi = tonumber(UI_data[2][3])    --最大气血
    Pkuxkx_user.cur_user.cur_xueqi = tonumber(UI_data[2][4])    --气血
    Pkuxkx_user.cur_user.max_jingli = tonumber(UI_data[1][6])   --最大精力
    Pkuxkx_user.cur_user.cur_jingli = tonumber(UI_data[1][7])   --精力
    Pkuxkx_user.cur_user.max_neili = tonumber(UI_data[1][4])    --最大内力
    Pkuxkx_user.cur_user.cur_neili = tonumber(UI_data[1][5])    --内力
    Pkuxkx_user.cur_user.cur_shiwu = tonumber(UI_data[3][4])    --食物
    Pkuxkx_user.cur_user.cur_yinshui = tonumber(UI_data[3][5]) --饮水
    Pkuxkx_user.cur_user.exp = tonumber(UI_data[1][2])         --经验
    Pkuxkx_user.cur_user.qianneng = tonumber(UI_data[1][3])    --潜能
    Pkuxkx_user.cur_user.zhenqi = tonumber(UI_data[3][2])      --真气
    Pkuxkx_user.cur_user.zhanyi = tonumber(UI_data[3][3])      --战意
    Pkuxkx_user.cur_user.zhan = tonumber(UI_data[3][6])        --非战斗/战斗中
    Pkuxkx_user.cur_user.mang = tonumber(UI_data[3][7])        --不忙/忙

    if Pkuxkx_user.cur_user.cur_xueqi > Pkuxkx_user.cur_user.max_xueqi then
        Pkuxkx_HP_UI.GUI_xueqi = Pkuxkx_user.cur_user.max_xueqi
    else
        Pkuxkx_HP_UI.GUI_xueqi = Pkuxkx_user.cur_user.cur_xueqi
    end
    GUI.Jingshen:setValue(Pkuxkx_HP_UI.GUI_xueqi, Pkuxkx_user.cur_user.max_xueqi,
        "<b>" .. "气血 " .. Pkuxkx_user.cur_user.cur_xueqi .. " / " .. Pkuxkx_user.cur_user.max_xueqi .. " / " .. Pkuxkx_user.cur_user.upper_xueqi .." </b>")

    if Pkuxkx_user.cur_user.cur_jingshen > Pkuxkx_user.cur_user.max_jingshen then
        Pkuxkx_HP_UI.GUI_jingshen = Pkuxkx_user.cur_user.max_jingshen
    else
        Pkuxkx_HP_UI.GUI_jingshen = Pkuxkx_user.cur_user.cur_jingshen
    end
    GUI.Xueqi:setValue(Pkuxkx_HP_UI.GUI_jingshen, Pkuxkx_user.cur_user.max_jingshen,
        "<b>" .."精神 " .. Pkuxkx_user.cur_user.cur_jingshen .." / " .. Pkuxkx_user.cur_user.max_jingshen .. " / " .. Pkuxkx_user.cur_user.upper_jingshen .. " </b>")

    if Pkuxkx_user.cur_user.cur_jingli > Pkuxkx_user.cur_user.max_jingli then
        Pkuxkx_HP_UI.GUI_Jingli = Pkuxkx_user.cur_user.max_jingli
    else
        Pkuxkx_HP_UI.GUI_Jingli = Pkuxkx_user.cur_user.cur_jingli
    end
    GUI.Jingli:setValue(Pkuxkx_HP_UI.GUI_Jingli, Pkuxkx_user.cur_user.max_jingli,
        "<b>" .. "精力 " .. Pkuxkx_user.cur_user.cur_jingli .. " / " .. Pkuxkx_user.cur_user.max_jingli .. " </b>")

    if Pkuxkx_user.cur_user.cur_neili > Pkuxkx_user.cur_user.max_neili then
        Pkuxkx_HP_UI.neili = Pkuxkx_user.cur_user.max_neili
    else
        Pkuxkx_HP_UI.neili = Pkuxkx_user.cur_user.cur_neili
    end
    GUI.Neili:setValue(Pkuxkx_HP_UI.neili, Pkuxkx_user.cur_user.max_neili,
        "<b>" .. "内力 " .. Pkuxkx_user.cur_user.cur_neili .. " / " .. Pkuxkx_user.cur_user.max_neili .. " </b>")

    if Pkuxkx_user.cur_user.cur_shiwu > Pkuxkx_user.cur_user.max_shiwu then
        Pkuxkx_HP_UI.GUI_Shuiwu = Pkuxkx_user.cur_user.max_shiwu
    else
        Pkuxkx_HP_UI.GUI_Shuiwu = Pkuxkx_user.cur_user.cur_shiwu
    end
    GUI.Shiwu:setValue(Pkuxkx_HP_UI.GUI_Shuiwu, Pkuxkx_user.cur_user.max_shiwu,
        "<b>" .. "食物 " .. Pkuxkx_user.cur_user.cur_shiwu .. " / " .. Pkuxkx_user.cur_user.max_shiwu .. " </b>")

    if Pkuxkx_user.cur_user.cur_yinshui > Pkuxkx_user.cur_user.max_yinshui then
        Pkuxkx_HP_UI.GUI_yinshui = Pkuxkx_user.cur_user.max_yinshui
    else
        Pkuxkx_HP_UI.GUI_yinshui = Pkuxkx_user.cur_user.cur_yinshui
    end
    GUI.Yinshui:setValue(Pkuxkx_HP_UI.GUI_yinshui, Pkuxkx_user.cur_user.max_yinshui,
        "<b>".."饮水 "..Pkuxkx_user.cur_user.cur_yinshui.." / "..Pkuxkx_user.cur_user.max_yinshui .." </b>")
end

function Pkuxkx_HP_UI.data_capture()
    Pkuxkx_HP_UI.task.data[1] = Pkuxkx_HP_UI.task.data[1] + 1
    if Pkuxkx_HP_UI.task.data[1] == 1 then
        table.insert(Pkuxkx_HP_UI.task.data[2], matches)
        Log.echo(tostring(matches[2]), 5)
    end
    if Pkuxkx_HP_UI.task.data[1] == 2 then
        table.insert(Pkuxkx_HP_UI.task.data[2], matches)
    end
    if Pkuxkx_HP_UI.task.data[1] == 3 then
        table.insert(Pkuxkx_HP_UI.task.data[2], matches)
        Log.echo("\nCapture HP data successfully!", 5)
        Pkuxkx_HP_UI.UI_update(Pkuxkx_HP_UI.task.data[2])
        Pkuxkx_HP_UI.task.data[1] = 0
    end
end

-- *************************************************

Pkuxkx_HP_UI.task = Task("HP_UI")
table.insert(Pkuxkx_HP_UI.task.data,0)   --HP_UI.task.data[0] 当前HP触发数量
table.insert(Pkuxkx_HP_UI.task.data,{HP_1=nil,HP_2=nil,HP_3=nil}) --HP_UI.task.data[1] 记录HP触发数据

Pkuxkx_HP_UI.trigger = ComplexTrigger("HP UI task")
Pkuxkx_HP_UI.timmer = Timer("HP UI timer")

Pkuxkx_HP_UI.trigger:tempMultiRegexTrigger("Pkuxkx_HP_UI_capture","^#([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+)$",[[ Pkuxkx_HP_UI.data_capture() ]],0,0,0)

Pkuxkx_HP_UI.timmer:tempTimer(Pkuxkx_HP_UI_Auto_time,
                       function() raiseEvent("HP_update") end,
                       true)

Pkuxkx_HP_UI.task:add_tri_obj(Pkuxkx_HP_UI.trigger)
Pkuxkx_HP_UI.task:add_timer_obj(Pkuxkx_HP_UI.timmer)
Pkuxkx_HP_UI.task:start()
UI_task_list:add_task_obj(Pkuxkx_HP_UI.task)
