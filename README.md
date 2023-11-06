# NT's Lua Games
This is a project created by me for fun to enhance my Lua knowledge. I didn't know I would end up creating a database for everyone to access. This game will be updated in future. 

# Files

## Main Files

| File Name | Description          |
|-----------|----------------------|
| main.lua  | The main file which includes the loading of main scripts.      |
| packages.lua | The file that loads all the packages and libraries required for the game to work. |
| README.md | Project's README    |

## Libraries And Packages
These reside in /packages/.
| File Name | Description          |
|-----------|----------------------|
| ntchecks.lua  | A package that contains the `type` checks.      |
| ntdatabase.lua | The package that contains the key-value database. |
| ntgames.lua | The package that contains various game functions that are required for the game.   |
| random.lua | The package that contains some random functions.   |
| table.lua | The package that contains functions related to tables.   |

## Databases
These reside in /database/.
| File Name | Description          |
|-----------|----------------------|
| database.dat | The file where ntdatabase stores the data. |
| game.dat | The file where the game's data is stored. It's much more reliable than ntdatabase. |

# Getting Started
You can start by learning the basics of gdata(game database) since ntdatabase is used for keys and values that are customly stored and can be only retrieved using db.get(). Gdata stores your keys and values as actually variables in a file and loads them up so you can use them as normal variables.
```lua
if username == nil then
username = "Username"
gdata.create("username","Username")
end

print("Hello " ..username.. "! You can change your username by inputting anything in the console.")
while true do
username = io.read()
if username ~= nil then
gdata.edit("username",username)
print("Your username is now " ..username)
else
end
end
```

# Packages

## ntdatabase
Ntdatabase is a package filled with database functions. You can store a key and a value in a file using db.store(key, value). You can then retrieve the value by using the function db.get(key).

### Functions:
* db.store(key, value) - Stores a value to the database with the corresponding key.
* db.get(key) - Retrieves a value from the database with the given key.
* db.load() - This function does not have any parameters. It refreshes the variables in the database.




