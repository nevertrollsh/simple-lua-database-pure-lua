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

# Getting started
Start by opening main.lua and writing your very first project. It could be anything from a guess the number game to an rpg game. You could start out by creating a basic username system using `ntdatabase`.
```lua
if username == nil then
username = "Username"
end

print("Hello " ..username.. "! You can change your username by inputting anything in the console.")
while true do
username = io.read()
if username ~= nil then
db.store("username",username)
print("Your username is now " ..username)
else
end
end
```



