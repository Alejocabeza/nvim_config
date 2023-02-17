require("config")
require("plug")
require("maps")

local has = function(x)
	return vim.fn.has(x) == 1
end

if has("macunix") then
	require("mac")
end
if has("win32") then
	require("win")
end
if has("linux") then
	require("linux")
end
