[Back to README.md](./README.md)


# Functions

## ntdatabase (package)
Ntdatabase is a package filled with database functions. You can store a key and a value in a file using db.store(key, value). You can then retrieve the value by using the function db.get(key).

Functions:
* db.store(key, value) - Stores a value to the database with the corresponding key.
* db.get(key) - Retrieves a value from the database with the given key.
* db.load() - This function does not have any parameters. It refreshes the variables in the database.

Code Snippet(s):
```lua
--- Using ntdatabase to store favourite number of a user
db.load() --- Refreshes the database.
if db.get("favnum") == nil then --- If key is not defined/stored
print("What is your favourite number?") --- Prints.
prompt = io.read() --- Stores the user input in a variable
db.store("favnum", prompt) --- Stores the variable prompt which is user's input into the key "favnum"
db.load() --- Refreshes the database.
print("Noted.") --- Prints.
else --- Triggers an else event for if the key "favnum" exists and is valid.
print("Your favourite number is " ..db.get("favnum")) --- Retrieves the value with the key "favnum" from the database and prints it.
end --- Ends the if event.
```
  



