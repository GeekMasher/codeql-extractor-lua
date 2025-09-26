-- Variable declaration
local x = 10
local y = "Hello, Lua!"

-- Table (array)
local arr = {1, 2, 3, 4, 5}

-- Table (dictionary)
local person = {
	name = "Alice",
	age = 30,
	is_student = false
}

-- Function definition
local function greet(name)
	return "Hello, " .. name .. "!"
end

-- Function call
local message = greet(person.name)
print(message)

-- Control flow: if-else
if person.age > 18 then
	print(person.name .. " is an adult.")
else
	print(person.name .. " is a minor.")
end

-- Loop: for
for i = 1, #arr do
	print("arr[" .. i .. "] = " .. arr[i])
end

-- Loop: while
local count = 0
while count < 3 do
	print("Count: " .. count)
	count = count + 1
end

-- Table iteration
for key, value in pairs(person) do
	print(key .. ": " .. tostring(value))
end
