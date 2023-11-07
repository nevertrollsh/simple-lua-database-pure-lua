nt = {}
game = dofile("database/game.dat")

gdata = {}


function gdata.create(varName, value)
    local fileName = "database/game.dat"
    
    -- Open the file in read mode
    local file = io.open(fileName, "r")

    if file then
        local data = file:read("*all")
        file:close()

        -- Check if the variable already exists
        local pattern = varName .. " = \"[^\"]+\""
        if not data:match(pattern) then
            -- If the variable doesn't exist, add it to the end of the file with double quotes
            data = data .. "\n" .. varName .. " = \"" .. value .. "\""

            -- Open the file again in write mode to overwrite it
            local file = io.open(fileName, "w")
            file:write(data)
            file:close()
        else
            print("Variable '" .. varName .. "' already exists.")
        end
    else
        print("Failed to open the file for reading.")
    end
end





function gdata.edit(varName, newValue)
    local fileName = "database/game.dat"
    
    -- Open the file in read mode
    local file = io.open(fileName, "r")

    if file then
        local data = file:read("*all")
        file:close()

        -- Find and replace the old value of the variable with the new value
        local pattern = varName .. " = \"%w+\""
        data = data:gsub(pattern, varName .. " = \"" .. newValue .. "\"")

        -- Open the file again in write mode to overwrite it
        local file = io.open(fileName, "w")
        file:write(data)
        file:close()
    else
        print("Failed to open the file for reading.")
    end
end

function gdata.load()
 dofile("database/game.dat")
end
