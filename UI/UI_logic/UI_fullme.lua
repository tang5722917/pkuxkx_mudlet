--[[
Author: Tangzp tang5722917@163.com
Date: 2023-02-06 23:07:42
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-06 23:12:55
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
  end

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

Pkuxkx_Fullme_UI.task = Task("Fullme_UI")
Pkuxkx_Fullme_UI.trigger = ComplexTrigger("Fullme UI task")
Pkuxkx_Fullme_UI.trigger = Pkuxkx_HP_UI.trigger:tempMultiRegexTrigger("Pkuxkx_Fullme_UI_capture",
    "^#([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+),([0-9]+)$", [[ Pkuxkx_HP_UI.data_capture() ]], 0, 0, 0)
