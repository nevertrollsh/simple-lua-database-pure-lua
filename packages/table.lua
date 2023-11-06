--- Performs a shallow merge
---@param target table Table to put values in
---@param source table Table to get values from
---@return table target
 function merge(target, source)
	for k, v in pairs(source) do
		target[k] = v
	end
	return target
end

--- Performs a shallow merge using `rawset`
---@param target table Table to put values in
---@param source table Table to get values from
---@return table target
 function merge_raw(target, source)
	for k, v in pairs(source) do
		rawset(target, k, v)
	end
	return target
end

--- Performs a recursive merge
---@param target table Table to put values in
---@param source table Table to get values from
---@return table target
 function merge_deep(target, source)
	for k, v in pairs(source) do
		if type(v) == "table" and type(target[k]) == "table" then
			merge_deep(target[k], v)
		else
			target[k] = v
		end
	end
	return target
end

--- Performs a recursive merge using `rawset`
---@param target table Table to put values in
---@param source table Table to get values from
---@return table target
 function merge_deep_raw(target, source)
	for k, v in pairs(source) do
		if type(v) == "table" and type(target[k]) == "table" then
			merge_deep_raw(target[k], v)
		else
			rawset(target, k, v)
		end
	end
	return target
end

--- Shallowly copies missing entries
---@param target table Table to put values in
---@param source table Table to get values from
---@return table target
 function inherit(target, source)
	for k, v in pairs(source) do
		if target[k] == nil then
			target[k] = v
		end
	end
	return target
end

--- Appends elements to the target table from any number of arrays
---@param target table to put the values in
---@vararg any[] Array to get values from
---@return table target
 function append(target, ...)
	for i = 1, select("#", ...) do
		for _, v in ipairs(select(i, ...)) do
			target[#target+1] = v
		end
	end
	return target
end

-------------------------------------------

--- Randomizes an array
--- Credits: https://gist.github.com/Uradamus/10323382
---@param tbl any[]
---@return any[] tbl
 function shuffle(tbl)
	for i = #tbl, 2, -1 do
		 j = math.random(i)
		tbl[i], tbl[j] = tbl[j], tbl[i]
	end
	return tbl
end

--- Shallowly copies a table.
--- For function that also sets the metatable, use `lazy.table.clone`
---@param tbl table Table to duplicate
---@return table copy
 function copy(tbl)
	 dupe = {}
	for k, v in pairs(tbl) do
		dupe[k] = v
	end
	return dupe
end

--- Shallowly copies a table and applies the same metatable.
--- For function that doesn't apply metatable, use `lazy.table.copy`
---@param tbl table Table to duplicate
---@return table clone
 function clone(tbl)
	 dupe = {}
	for k, v in pairs(tbl) do
		dupe[k] = v
	end
	return setmetatable(dupe, getmetatable(tbl))
end

--- Removes all keys from the table
---@param tbl table Table to clear
---@return table tbl
 function clear(tbl)
	for k in pairs(tbl) do
		tbl[k] = nil
	end
	return tbl
end

--- Counts all keys, useful for non-sequential tables
---@param tbl table Table to get count of
---@return number amount
 function count(tbl)
	 amount = 0
	for _ in pairs(tbl) do
		amount = amount + 1
	end
	return amount
end

--- Checks whether a non-sequential table is empty
---@param tbl table Table to check
---@return boolean empty True if empty, False otherwise
 function is_empty(tbl)
	return next(tbl) == nil
end

--- Checks whether a value is present in the table
---@param tbl table
---@param value any Value to look for
 function has_value(tbl, value)
	for _, v in pairs(tbl) do
		if v == value then
			return true
		end
	end
end

--- Returns the first found key associated with the given value
---@param tbl table
---@param value any Value to look for
---@return any? key
 function find_key(tbl, value)
	for k, v in pairs(tbl) do
		if v == value then
			return k
		end
	end
end

--- Checks whether all inside of a table are equal to the provided value
---@param tbl table
---@param value any Value to check against
---@return boolean equal `true` if all values are equal to the provided value
 function all_equal(tbl, value)
	for _, v in pairs(tbl) do
		if v ~= value then
			return false
		end
	end
	return true
end

-------------------------------------------
