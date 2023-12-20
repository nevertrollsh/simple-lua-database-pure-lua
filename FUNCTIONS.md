[Back to README.md](./README.md)


# Functions

## ntdatabase (package)
NTDatabase is a package filled with database functions. You can store a key and a value in a file using db.store(key, value). You can then retrieve the value by using the function db.get(key).

Function(s):
* db.store(key, value) - Stores a value to the database with the corresponding key.
* db.get(key) - Retrieves a value from the database with the given key.
* db.load() - This function does not have any parameters. It refreshes the variables in the database.

Code Snippet(s):
```lua
--- Using ntdatabase to store favourite number of a user

db.load() --- Refreshes the database.

if db.get("favnum") == nil then --- If key is not defined/stored.

print("What is your favourite number?") --- Prints.

prompt = io.read() --- Stores the user input in a variable.

db.store("favnum", prompt) --- Stores the variable prompt which is user's input into the key "favnum".

db.load() --- Refreshes the database.

print("Noted.") --- Prints.

else --- Triggers an else event for if the key "favnum" exists and is valid.

print("Your favourite number is " ..db.get("favnum")) --- Retrieves the value with the key "favnum" from the database and prints it.

end --- Ends the if event.
```
  


## ntgames (package)
This package includes many functions for creating a game. Primarily used for saving and retrieving variables to its own database without the need of ntdatabase.
This package includes a sub-package called gdata, which stands for game data.

Function(s):
* gdata.create(varName, value) - Stores a variable to the database.
* gdata.edit(varName, newValue) - Edits a variable in the database.
* gdata.load() - Similar to db.load(). Refreshes all the variables in the database.

Code Snippet(s):
```lua
--- A prompt that asks the user's favourite car if they haven't specified before.
--- There are no need of get() functions in gdata as key,value datas are loaded like normal variables.

gdata.load() --- Refreshes the database.

if carname == nil then --- If carname wasn't specified before.

print("What is your favourite car?") --- Prints.

prompt = io.read() --- Read's user input.

gdata.create("carname",prompt) --- Defines the variable carname as the user's input and stores it in the database.

gdata.load() --- Refreshes the database.

print("Noted.") --- Prints

else --- If carname was specified.

print("Your favourite car is " ..carname) --- Prints

end --- Ends the if event.
```






