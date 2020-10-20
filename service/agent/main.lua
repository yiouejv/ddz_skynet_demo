local skynet = require("skynet")
require("skynet.manager")

skynet.start(function()
	skynet.error("-------------- agent main")
	skynet.register(".agent")
end)