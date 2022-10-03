--[[
Author: Donald Duck tang5722917@163.com
Date: 2022-10-04 02:50:29
LastEditors: Donald Duck tang5722917@163.com
LastEditTime: 2022-10-04 02:50:33
FilePath: /mudlet_-auto-robot/UI/pkuxkx_UI_base.lua
Description:
Copyright (c) 2022 by Donald Duck email: tang5722917@163.com, All Rights Reserved.
--]]

-- CSSMan by Vadi. Public domain.

CSSMan = {}
CSSMan.__index = CSSMan

function CSSMan.new(stylesheet)
  local obj  = { stylesheet = {} }
  setmetatable(obj,CSSMan)
  local trim = string.trim

  assert(type(stylesheet) == "string", "CSSMan.new: no stylesheet provided. A possible error is that you might have used CSSMan.new, not CSSMan:new")

  for line in stylesheet:gmatch("[^\r\n]+") do
    local attribute, value = line:match("^(.-):(.-);$")
    if attribute and value then
      attribute, value = trim(attribute), trim(value)
      obj.stylesheet[attribute] = value
    end
  end

  return obj
end

function CSSMan:set(key, value)
  self.stylesheet[key] = value
end

function CSSMan:get(key)
  return self.stylesheet[key]
end

function CSSMan:getCSS(key)
  local lines, concat = {}, table.concat
  for k,v in pairs(self.stylesheet) do lines[#lines+1] = concat({k,": ", v, ";"}) end
  return concat(lines, "\n")
end

function CSSMan:gettable()
  return self.stylesheet
end

function CSSMan:settable(tbl)
  assert(type(tbl) == "table", "CSSMan:settable: table expected, got "..type(tbl))

  self.stylesheet = tbl
end


GUI = GUI or {}

local w,h = getMainWindowSize()
setBorderLeft(w/4)
setBorderTop(h/10)
setBorderBottom(h/10)
setBorderRight(w/4)

GUI.BackgroundCSS = CSSMan.new([[
  background-color: rgb(20,0,20);
]])

GUI.Left = Geyser.Label:new({
  name = "GUI.Left",
  x = 0, y = 0,
  width = "25%",
  height = "100%",
})
GUI.Left:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Right = Geyser.Label:new({
  name = "GUI.Right",
  x = "-25%", y = 0,
  width = "25%",
  height = "100%",
})
GUI.Right:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Top = Geyser.Label:new({
  name = "GUI.Top",
  x = "25%", y = 0,
  width = "50%",
  height = "10%",
})
GUI.Top:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Bottom = Geyser.Label:new({
  name = "GUI.Bottom",
  x = "25%", y = "90%",
  width = "50%",
  height = "10%",
})
GUI.Bottom:setStyleSheet(GUI.BackgroundCSS:getCSS())

GUI.Header = Geyser.HBox:new({
    name = "GUI.Header",
    x = 0, y = 0,
    width = "100%",
    height = "100%",
  },GUI.Top)

  GUI.IconCSS = CSSMan.new([[
    background-color: rgba(0,0,0,100);
    border-style: solid;
    border-width: 1px;
    border-color: white;
    border-radius: 5px;
    margin: 5px;
    qproperty-wordWrap: true;
  ]])

  for i=1,12 do
    GUI["Icon"..i] = Geyser.Label:new({
      name = "GUI.Icon"..i,
    },GUI.Header)
    GUI["Icon"..i]:setStyleSheet(GUI.IconCSS:getCSS())
    GUI["Icon"..i]:echo("<center>GUI. Icon"..i)
end

GUI.Footer = Geyser.HBox:new({
    name = "GUI.Footer",
    x = 0, y = 0,
    width = "100%",
    height = "100%",
  },GUI.Bottom)

  GUI.LeftColumn = Geyser.VBox:new({
    name = "GUI.LeftColumn",
  },GUI.Footer)

  GUI.RightColumn = Geyser.VBox:new({
    name = "GUI.RightColumn",
  },GUI.Footer)

  GUI.GaugeBackCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])

  GUI.GaugeFrontCSS = CSSMan.new([[
    background-color: rgba(0,0,0,0);
    border-style: solid;
    border-color: white;
    border-width: 1px;
    border-radius: 5px;
    margin: 5px;
  ]])

  GUI.Health = Geyser.Gauge:new({
    name = "GUI.Health",
  },GUI.LeftColumn)
  GUI.Health.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","red")
  GUI.Health.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Health:setValue(math.random(100),100)
  GUI.Health.front:echo("GUI.Health")

  GUI.Mana = Geyser.Gauge:new({
    name = "GUI.Mana",
  },GUI.LeftColumn)
  GUI.Mana.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","blue")
  GUI.Mana.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Mana:setValue(math.random(100),100)
  GUI.Mana.front:echo("GUI.Mana")

  GUI.Endurance = Geyser.Gauge:new({
    name = "GUI.Endurance",
  },GUI.RightColumn)
  GUI.Endurance.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","yellow")
  GUI.Endurance.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Endurance:setValue(math.random(100),100)
  --GUI.Endurance.front:echo("GUI.Endurance")
  GUI.Endurance.front:echo([[<span style = "color: black">GUI.Endurance</span>]])

  GUI.Willpower = Geyser.Gauge:new({
    name = "GUI.Willpower",
  },GUI.RightColumn)
  GUI.Willpower.back:setStyleSheet(GUI.GaugeBackCSS:getCSS())
  GUI.GaugeFrontCSS:set("background-color","purple")
  GUI.Willpower.front:setStyleSheet(GUI.GaugeFrontCSS:getCSS())
  GUI.Willpower:setValue(math.random(100),100)
GUI.Willpower.front:echo("GUI.Willpower")

GUI.BoxCSS = CSSMan.new([[
  background-color: rgba(0,0,0,100);
  border-style: solid;
  border-width: 1px;
  border-radius: 10px;
  border-color: white;
  margin: 10px;
]])

GUI.Box1 = Geyser.Label:new({
  name = "GUI.Box1",
  x = 0, y = 0,
  width = "100%",
  height = "50%",
},GUI.Right)
GUI.Box1:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box1:echo("<center>GUI.Box1")

GUI.Box2 = Geyser.Label:new({
  name = "GUI.Box2",
  x = 0, y = "50%",
  width = "50%",
  height = "50%",
},GUI.Right)
GUI.Box2:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box2:echo("<center>GUI.Box2")

GUI.Box3 = Geyser.Label:new({
  name = "GUI.Box3",
  x = "50%", y = "50%",
  width = "50%",
  height = "50%",
},GUI.Right)
GUI.Box3:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box3:echo("<center>GUI.Box3")

GUI.Box4 = Geyser.Label:new({
  name = "GUI.Box4",
  x = "0%", y = "0%",
  width = "100%",
  height = "25%",
},GUI.Left)
GUI.Box4:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box4:echo("<center>GUI.Box4")

GUI.Box5 = Geyser.Label:new({
  name = "GUI.Box5",
  x = "0%", y = "25%",
  width = "50%",
  height = "50%",
},GUI.Left)
GUI.Box5:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box5:echo("<center>GUI.Box5")

GUI.Box6 = Geyser.Label:new({
  name = "GUI.Box6",
  x = "50%", y = "25%",
  width = "50%",
  height = "50%",
},GUI.Left)
GUI.Box6:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box6:echo("<center>GUI.Box6")

GUI.Box7 = Geyser.Label:new({
  name = "GUI.Box7",
  x = "0%", y = "75%",
  width = "100%",
  height = "25%",
},GUI.Left)
GUI.Box7:setStyleSheet(GUI.BoxCSS:getCSS())
GUI.Box7:echo("<center>GUI.Box7")
