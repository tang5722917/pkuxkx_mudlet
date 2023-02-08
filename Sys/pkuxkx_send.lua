--[[
Author: Tangzp tang5722917@163.com
Date: 2023-01-18 06:19:48
LastEditors: Tangzp tang5722917@163.com
LastEditTime: 2023-02-09 03:42:25
FilePath: \mudlet_-auto-robot\Sys\pkuxkx_send.lua
Description:
Copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved.
--]]
pkuxkx_cmd = pkuxkx_cmd or {}
pkuxkx_cmd.cmd_queue_normal = pkuxkx_cmd.cmd_queue_normal or {}

registerAnonymousEventHandler("CMD_clk_event_normal", "pkuxkx_cmd.SendHandle_normal")

function pkuxkx_cmd.SendHandle_normal(event,is_cmdtime)
  if not (#pkuxkx_cmd.cmd_queue_normal == 0) then
    if not (pkuxkx_cmd.cmd_queue_normal[1] == nil) then
      send( pkuxkx_cmd.cmd_queue_normal[1] )
      table.remove(pkuxkx_cmd.cmd_queue_normal,1)
      end
    end
end

function pkuxkx_cmd.add_string_normal(cmd_string)
  table.insert(pkuxkx_cmd.cmd_queue_normal,cmd_string)
end

function pkuxkx_cmd.add_table_normal(pkuxkx_cmd_add_table)
  for i,v in pairs(pkuxkx_cmd_add_table) do
    table.insert(pkuxkx_cmd.cmd_queue_normal,v) end
end

function pkuxkx_cmd.insert_string_normal(cmd_string)
  table.insert(pkuxkx_cmd.cmd_queue_normal,1,cmd_string)
end

function pkuxkx_cmd.insert_table_normal(pkuxkx_cmd_add_table)
  for i,v in pairs(pkuxkx_cmd_add_table) do
    table.insert(pkuxkx_cmd.cmd_queue_normal,i,v) end
end

function pkuxkx_cmd.clear_table_normal()
  for i=1,#pkuxkx_cmd.cmd_queue_normal
    do table.remove(pkuxkx_cmd.cmd_queue_normal) end
  end
