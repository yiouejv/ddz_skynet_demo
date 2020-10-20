local skynet = require("skynet")


skynet.start(function()
	skynet.newservice("console")
	skynet.newservice("agent")
	skynet.newservice("test")
	skynet.newservice("agent_gate")

	print('------------------------------ game_launcher agent', skynet.localname(".agent"))
	print('------------------------------ game_launcher agent_gate', skynet.localname(".agent_gate"))
	print('------------------------------ game_launcher test', skynet.localname(".test"))
end)