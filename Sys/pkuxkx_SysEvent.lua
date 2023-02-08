--[[
Author: Tangzp tang5722917@163.com
Date: 2023-02-07 05:02:11
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-09 04:38:34
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_SysEvent.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
Pkuxkx_SysEvent = Pkuxkx_SysEvent or {}

--Raised when Mudlet is finished downloading a file successfully - the location of the downloaded file is passed as a second argument.
registerAnonymousEventHandler("sysDownloadDone", "Pkuxkx_SysEvent.downloaded_file")

--function downloaded_file(_, filename)  filename 为完成下载的函数名
-- register our function to run on the event that something was downloaded
function Pkuxkx_SysEvent.downloaded_file(_, filename)
    -- is the file that downloaded ours?
    -- 完成fullme下载的事件
    if filename:find("pkuxkx_captcha.html", 1, true) then
      local imageurl = Pkuxkx_Fullme_UI.parsewebpage(filename)
      local baseurl = Pkuxkx_Fullme_UI.stripurl(Pkuxkx_Fullme_UI.captcha)
      downloadFile(getMudletHomeDir() .. "/pkuxkx_captcha.jpg", baseurl .. imageurl)
    elseif filename:find("pkuxkx_captcha.jpg", 1, true) then
    Pkuxkx_Fullme_UI.makeui(filename)
    end

  end
