
function pkuxkx_maptool.reverse( walk_table )
    local return_table={}
    local return_table_r={}
    local temp
      for i,v in pairs(walk_table) do
        if v == 's' then temp = 'n' end
        if v == 'n' then temp = 's' end
        if v == 'w' then temp = 'e' end
        if v == 'e' then temp = 'w' end
        if v == 'enter' then temp = 'out' end
        if v == 'out' then temp = 'enter' end
        if v == 'u' then temp = 'd' end
        if v == 'd' then temp = 'u' end
        if v == 'sw' then temp = 'ne' end
        if v == 'se' then temp = 'nw' end
        if v == 'ne' then temp = 'sw' end
        if v == 'nw' then temp = 'se' end
        if v == 'sd' then temp = 'nu' end
        if v == 'su' then temp = 'nd' end
        if v == 'nd' then temp = 'su' end
        if v == 'nu' then temp = 'sd' end
        if v == 'eu' then temp = 'wd' end
        if v == 'ed' then temp = 'wu' end
        if v == 'wu' then temp = 'ed' end
        if v == 'wd' then temp = 'eu' end
        table.insert(return_table,temp)
        end  
      for i=1, #return_table do
        local key = #return_table + 1 - i
        return_table_r[i] = return_table[key]
      end
      return return_table_r
end