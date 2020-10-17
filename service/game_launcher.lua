local skynet = require("require")


skynet.start(function()
	skynet.newservice(".agent")
	skynet.newservice(".agent_gate")
end)