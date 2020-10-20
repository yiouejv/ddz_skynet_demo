local skynet = require("skynet")
require("skynet.manager")


local function init()
	skynet.dispatch("lua", function(session, address, command, ...)
		PRINT("test session, address, msg, sz", session, address, command, ...)
	end)
end


skynet.start(function()
	skynet.error("-------------- test main")
	skynet.register(".test")

	skynet.init(init)
end)