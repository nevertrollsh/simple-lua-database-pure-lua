random = {}

math.randomseed(os.time())



function random.choice(...)
    local items = {...}
    local index = math.random(1, #items)
    return items[index]
end

function random.text(...)
    local items = {...}
    local index = math.random(1, #items)
    return items[index]
end


function random.number(a,b)
 if type(a) == "number" and type(b) == "number" then
 return math.random(a,b)
  else
    error(b.. "is not a valid number! Please recheck your code to see if you made any typos in random.number function.")
  end
end

