local skynet = require("skynet")
require("skynet.manager")

skynet.start(function()
	skynet.error("-------------- test agent_gate")
	skynet.register(".agent_gate")

	local handler = skynet.localname(".test")
	local address = skynet.address(handler)
	skynet.send(address, "lua", 1, 2, 3)
end)