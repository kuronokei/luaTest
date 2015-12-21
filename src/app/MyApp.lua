
local MyApp = class("MyApp", cc.load("mvc").AppBase)
local ret0 = require("hello")
local ret = require("hello")
function MyApp:onCreate()
    math.randomseed(os.time())
    --hello:sayHello()
    print(ret0)
    print(ret)
    print("@@@@@@@@@", package.path)
end

return MyApp
