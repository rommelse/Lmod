--module('Version')
local M={}
function M.tag()  return "5.0"   end
function M.date() return "2013-05-29 05:22" end
function M.git()  return "(@git@)"  end
function M.name()
  local a = {}
  a[#a+1] = M.tag()
  a[#a+1] = M.git()
  a[#a+1] = M.date()
  return table.concat(a," ")
end
return M
