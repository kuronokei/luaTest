
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

--require("cocos.init")
require("cocos.ui.GuiConstants")

function MainScene:onCreate()
    -- add background image
    local bg = display.newSprite("MainSceneBg.jpg")
    bg:move(display.center)
    bg:addTo(self)

    -- add play button
    local playButton = cc.MenuItemImage:create("PlayButton.png", "PlayButton.png")
        :onClicked(function()
            self:getApp():enterScene("PlayScene")
        end)
    cc.Menu:create(playButton)
        :move(display.cx, display.cy - 200)
        :addTo(self)

        local btn = ccui.Button:create("ExitButton.png", "ExitButton.png")
        btn:setPosition(cc.p(300, 300))
        btn:setTouchEnabled(false)
        self:addChild(btn)
        -- btn:setScale(1.5)
        print(btn:getContentSize().width, btn:getContentSize().height)
        -- print("@@@@@@", display.getMaxScal(), self.win_bg:getContentSize().width, self.win_bg:getContentSize().height)

        local function onTouchBegan(touch, event)
            print(1111111111, self:getScaleX(), self:getScaleY())
            print(22222222, self:getScaleX(), self:getScaleY())
            print("触摸")
            return true
        end
        local function onTouchEnded(touch, event)
            print("触摸结束")
        end
        local listener = cc.EventListenerTouchOneByOne:create()
        listener:setSwallowTouches(true)
        listener:registerScriptHandler(onTouchBegan,cc.Handler.EVENT_TOUCH_BEGAN)
        listener:registerScriptHandler(onTouchEnded,cc.Handler.EVENT_TOUCH_ENDED)
        local eventDispatcher = btn:getEventDispatcher()
        eventDispatcher:addEventListenerWithSceneGraphPriority(listener, btn)
    end

return MainScene
