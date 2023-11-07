packages = {"ntdatabase","tables","random","ntchecks","ntgames"}

function sleep(seconds)
    os.execute("sleep " .. tonumber(seconds))
end

function loadPackage(pkg)
dofile(pkg)
end


local database = loadPackage("packages/ntdatabase.lua");

local tables = loadPackage("packages/table.lua")

local random = loadPackage("packages/random.lua")

local ntchecks = loadPackage("packages/ntchecks.lua")

local ntgames = loadPackage("packages/gdata.lua")


