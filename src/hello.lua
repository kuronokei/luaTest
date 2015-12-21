-- hello = {}

-- function hello:output( ... )
-- 	print("hello test!!---------")
-- end

-- function cc.exports.sayhello()
-- 	print("helloxxxxxxxxx")
-- end

hello = class("hello", display.newNode)

function hello:sayHello( ... )
	print("hello ----------------------------+++")
end