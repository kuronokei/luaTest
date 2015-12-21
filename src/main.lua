
cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("res/")
cc.FileUtils:getInstance():addSearchPath("src/search/")

print("=======+++++++++++========")
print(package.path)
for k,v in pairs(package.loaded) do
	print("package.loaded",k,v)
end

for k,v in pairs(package.loaders) do
	print("@@@loaders",k,v)
end
print("=======-----------====")


require "config"
require "cocos.init"
require "test"

local function main()
    require("app.MyApp"):create():run()
end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
