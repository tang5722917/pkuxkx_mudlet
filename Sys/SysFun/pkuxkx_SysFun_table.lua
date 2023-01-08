Sys_table = Sys_table or {}
function Sys_table.merge (table1,table2)   -- 两个table合并，返回合并后的table
local table={}
for key,value in ipairs(table1)
do
   table[key]=value
end

for key,value in ipairs(table2)
do
   table[key+#table1]=value
end
return table
end