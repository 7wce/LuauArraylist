local Module = require(Path.To.ArraylistModule)()

Module.title("Hello world!") -- Changes the title name.

local Array1 = Module.new({
	name = "Array" -- Will show text as: "Array"
})

Module.updText({
	array = Array1, -- The array provided, for this we'll use "Array1" because that's the array that we've just created.
	newText = "Hello world!" -- Will change the text of the array
})

Module.Toggle(Array1) -- Will hide the array provided.
