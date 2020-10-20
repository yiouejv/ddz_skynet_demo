root = "./"
thread = 2
logger = nil
logpath = '../log'
harbor = 0

address = "127.0.0.1:2528"
-- master = "0.0.0.0:2020"
-- standalone = "0.0.0.0:2020"
start = "game_launcher"	-- main script
bootstrap = "snlua bootstrap"	-- The service for bootstrap


luaservice = root.."service/?.lua;"..root.."test/?.lua;"..root.."examples/?.lua;"..root.."../service/?/main.lua;"..root.."../service/?.lua;"
lualoader = "lualib/loader.lua"
snax = root.."examples/?.lua;"..root.."test/?.lua"
cpath = root.."cservice/?.so;"
lua_path = root.."../lualib/?.lua;"..root.."lualib/?.lua;"

preload = "../lualib/global_variables.lua"


--[[
	standalone 如果把这个 skynet 进程作为主进程启动（skynet 可以由分布在多台机器上的多个进程构成网络），那么需要配置standalone 这一项，表示这个进程是主节点，它需要开启一个控制中心，监听一个端口，让其它节点接入。
	master 指定 skynet 控制中心的地址和端口，如果你配置了 standalone 项，那么这一项通常和 standalone 相同。
	address 当前 skynet 节点的地址和端口，方便其它节点和它组网。注：即使你只使用一个节点，也需要开启控制中心，并额外配置这个节点的地址和端口。
	harbor 可以是 1-255 间的任意整数。一个 skynet 网络最多支持 255 个节点。每个节点有必须有一个唯一的编号。
	       如果 harbor 为 0 ，skynet 工作在单节点模式下。此时 master 和 address 以及 standalone 都不必设置。
]]