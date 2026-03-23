local Module = require(script.Parent.ArraylistModule)()

Module.title("Solstice Client | <font color=\"#c7a6f5\">v1.0.0</font>") -- Changes the title name.

local Array1 = Module.new({
	name = "Array" -- Will show text as: "Array"
})

Module.updText({
	array = Array1, -- The array provided, for this we'll use "Array1" because that's the array that we've just created.
	newText = "Hello <font color=\"#9146fa\">world!</font>" -- Will change the text of the array
})

task.wait(2)

Module.Toggle(Array1) -- Will hide the array provided.

task.wait(1)

Module.Toggle(Array1) -- Will show the array provided.
