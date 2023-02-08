--[[
Author: Tangzp tang5722917@163.com
Date: 2023-02-07 05:02:11
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-08 08:22:46
FilePath: \mudlet_-auto-robot\UI\UI_logic\UI_fullme.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]

Pkuxkx_Fullme_UI = Pkuxkx_Fullme_UI or {}

  --  开始下载url 对应的链接
  function Pkuxkx_Fullme_UI.downloadcaptcha(url)
    Pkuxkx_Fullme_UI.captcha = url
    --downloadFile(saveto, url)
    downloadFile(getMudletHomeDir() .. "/pkuxkx_captcha.html", url)
  endfull

  function Pkuxkx_Fullme_UI.parsewebpage(filename)
    local f, s, webpage = io.open(filename)
    if f then
      webpage = f:read("*a")
      io.close(f)
    end
    local url = webpage:match('img src="%.(.-)"')
    return url
  end

  function Pkuxkx_Fullme_UI.stripurl(url)
    return url:match("(.*)/")
  end

  function Pkuxkx_Fullme_UI.hidecaptcha()
    Pkuxkx_Fullme_UI.picturelabel:hide()
  end

  function Pkuxkx_Fullme_UI.makeui(image)
    Pkuxkx_Fullme_UI.picturelabel =
      Geyser.Label:new(
        {name = "Pkuxkx_Fullme_UI.picturelabel", x = "50%", y = "-100px", width = "325px", height = "84px"}
      )
    -- stick an 'x' top-right
    Pkuxkx_Fullme_UI.picturelabelclose =
      Geyser.Label:new(
        {
          name = "Pkuxkx_Fullme_UI.picturelabelclose",
          x = "-20px",
          y = "5px",
          width = "15px",
          height = "15px",
          message = "<center>❌</center>",
        },
        Pkuxkx_Fullme_UI.picturelabel
      )
      Pkuxkx_Fullme_UI.picturelabel:setBackgroundImage(image)
      Pkuxkx_Fullme_UI.picturelabelclose:setReleaseCallback("Pkuxkx_Fullme_UI.hidecaptcha")
end

function Pkuxkx_Fullme_UI.data_capture()
    Pkuxkx_Fullme_UI.downloadcaptcha(multimatches[2][1])
    Log.echo("\n Fullme 图片下载完毕", 4)
end


Pkuxkx_Fullme_UI.task = Task("Fullme_UI")
Pkuxkx_Fullme_UI.trigger = ComplexTrigger("Fullme UI task")

Pkuxkx_Fullme_UI.trigger:tempMultiRegexTrigger("Pkuxkx_Fullme_UI_capture",
    "你现在才来呀，不过总比不来好。", [[ ]], 1, 0, 1)
Pkuxkx_Fullme_UI.trigger:tempMultiRegexTrigger("Pkuxkx_Fullme_UI_capture",
    "http://fullme.+", [[ Pkuxkx_Fullme_UI.data_capture() ]], 1, 0, 1)

Pkuxkx_Fullme_UI.trigger:tempMultiRegexTrigger("Pkuxkx_Fullme_UI_Delete_1",
    "你的客户端不支持MXP,请直接打开链接查看图片。", [[ deleteLine() ]], 0, 0, 0)

Pkuxkx_Fullme_UI.task:add_tri_obj(Pkuxkx_Fullme_UI.trigger)
Pkuxkx_Fullme_UI.task:start()
UI_task_list:add_task_obj(Pkuxkx_Fullme_UI.task)


--[[
lua dfeedTriggers("你现在才来呀，不过总比不来好。\n http://fullme.pkuxkx.net/robot.php?filename=1675890048965918")
    你现在才来呀，不过总比不来好。
    http://fullme.pkuxkx.net/robot.php?filename=1675728405289573
]]--
