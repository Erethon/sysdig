--[[

 
This program is free software: you can redistribute it and/or modify




This program is distributed in the hope that it will be useful,





along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]]

-- The number of items to show
TOP_NUMBER = 30

-- Chisel description
description = "Show the top " .. TOP_NUMBER .. " system calls in terms of number of calls. You can use filters to restrict this to a specific process, thread or file."
short_description = "top system calls by number"
category = "performance"

-- Chisel argument list
args = {}

-- Argument notification callback
function on_set_arg(name, val)
	return false
end

-- Initialization callback
function on_init()
	chisel.exec("table_generator", 
		"evt.type",
		"System Call",
		"evt.count",
		"# Calls",
		"evt.dir = <", 
		"" .. TOP_NUMBER,
		"none")
	return true
end
