nt = {}
db = {}

function db.store(key, value)
  -- Open the database.lua file in write mode
  local file = io.open("database/database.dat", "w")

  if file then
    -- Write the key and value to the file with double quotes around the value
    file:write('nt["' .. key .. '"] = "' .. value .. '"\n')
    file:close()
    
  else
    print("Failed to open the database.lua file.")
  end
end

function db.get(key)
  -- Include the database.lua file
  dofile("database/database.dat")

  if nt[key] then
    return nt[key]
  else
    return nil -- Key not found
  end
end


function db.load()
dofile("database/database.dat")
end
