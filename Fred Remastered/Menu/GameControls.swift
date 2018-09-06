//
//  GameControls.swift
//  Fred Remastered
//
//  Created by Fernando Vazquez on 9/5/18.
//  Copyright © 2018 Fernando Vasquez. All rights reserved.
//

import SpriteKit

struct GameControls {
    
    let frame: SKSpriteNode
    let gray60Button1: SKSpriteNode
    let gray60Button2: SKSpriteNode
    let gray60Button3: SKSpriteNode
    let gray60Button4: SKSpriteNode
    let gray60Button5: SKSpriteNode
    let gray60Button6: SKSpriteNode
    let gray60Button7: SKSpriteNode
    let gray60Button8: SKSpriteNode
    let gray60Button9: SKSpriteNode
    let gray60Button10: SKSpriteNode
    let gray60Button11: SKSpriteNode
    let gray60Button12: SKSpriteNode
//    let sliderSlot: SKSpriteNode
//    let slider: SKSpriteNode
    var gameSwitch: GameSwitch!

    
    init(inThisScene: GameScene) {
        
        frame = SKSpriteNode.init(imageNamed: "frame")
        frame.name = "frame"
        frame.zPosition = 0
        frame.position = CGPoint(x: inThisScene.size.width/2 , y: inThisScene.size.height/2)
        frame.size = CGSize(width: inThisScene.size.width, height: inThisScene.size.height)
        
        gray60Button1 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button1.name = "gray60Button1"
        gray60Button1.zPosition = 1
        gray60Button1.position = CGPoint(x: inThisScene.size.width*19.95/100,
                                         y: inThisScene.size.height*72.53/100)
        gray60Button1.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))
        
        gray60Button2 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button2.name = "gray60Button2"
        gray60Button2.zPosition = 1
        gray60Button2.position = CGPoint(x: inThisScene.size.width*49.95/100,
                                         y: inThisScene.size.height*52.53/100)
        gray60Button2.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button3 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button3.name = "gray60Button3"
        gray60Button3.zPosition = 1
        gray60Button3.position = CGPoint(x: inThisScene.size.width*79.95/100,
                                         y: inThisScene.size.height*32.53/100)
        gray60Button3.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button4 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button4.name = "gray60Button4"
        gray60Button4.zPosition = 1
        gray60Button4.position = CGPoint(x: inThisScene.size.width*19.95/100,
                                         y: inThisScene.size.height*12.53/100)
        gray60Button4.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button5 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button5.name = "gray60Button5"
        gray60Button5.zPosition = 1
        gray60Button5.position = CGPoint(x: inThisScene.size.width*49.95/100,
                                         y: inThisScene.size.height*72.53/100)
        gray60Button5.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button6 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button6.name = "gray60Button6"
        gray60Button6.zPosition = 1
        gray60Button6.position = CGPoint(x: inThisScene.size.width*79.95/100,
                                         y: inThisScene.size.height*52.53/100)
        gray60Button6.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button7 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button7.name = "gray60Button7"
        gray60Button7.zPosition = 1
        gray60Button7.position = CGPoint(x: inThisScene.size.width*19.95/100,
                                         y: inThisScene.size.height*32.53/100)
        gray60Button7.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button8 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button8.name = "gray60Button8"
        gray60Button8.zPosition = 1
        gray60Button8.position = CGPoint(x: inThisScene.size.width*49.95/100,
                                         y: inThisScene.size.height*12.53/100)
        gray60Button8.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button9 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button9.name = "gray60Button9"
        gray60Button9.zPosition = 1
        gray60Button9.position = CGPoint(x: inThisScene.size.width*79.95/100,
                                         y: inThisScene.size.height*72.53/100)
        gray60Button9.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button10 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button10.name = "gray60Button10"
        gray60Button10.zPosition = 1
        gray60Button10.position = CGPoint(x: inThisScene.size.width*19.95/100,
                                          y: inThisScene.size.height*52.53/100)
        gray60Button10.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button11 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button11.name = "gray60Button11"
        gray60Button11.zPosition = 1
        gray60Button11.position = CGPoint(x: inThisScene.size.width*49.95/100,
                                          y: inThisScene.size.height*32.53/100)
        gray60Button11.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))

        gray60Button12 = SKSpriteNode.init(imageNamed: "gray60Button")
        gray60Button12.name = "gray60Button12"
        gray60Button12.zPosition = 1
        gray60Button12.position = CGPoint(x: inThisScene.size.width*79.95/100,
                                          y: inThisScene.size.height*12.53/100)
        gray60Button12.size = CGSize(
            width:(gray60Button1.size.width*(inThisScene.size.width/gray60Button1.size.width)*(26.57/100)),
            height:(gray60Button1.size.height*(inThisScene.size.height/gray60Button1.size.height)*(15.57/100)))
        
//        sliderSlot = SKSpriteNode.init(imageNamed: "sliderSlot")
//        sliderSlot.name = "sliderSlot"
//        sliderSlot.zPosition = 1
//        sliderSlot.position = CGPoint(x: inThisScene.size.width*49.95/100,
//                                      y: inThisScene.size.height*90/100)
//        sliderSlot.size = CGSize(
//            width:(sliderSlot.size.width * (inThisScene.size.width/sliderSlot.size.width)*(36.76/100)),
//            height:(sliderSlot.size.height * (inThisScene.size.height/sliderSlot.size.height)*(7.92/100)))
//
//        slider = SKSpriteNode.init(imageNamed: "slider")
//        slider.name = "slider"
//        slider.zPosition = 1
//        slider.position = CGPoint(x: inThisScene.size.width*38.33/100,
//                                  y: inThisScene.size.height*90/100)
//        slider.size = CGSize(
//            width:(slider.size.width*(inThisScene.size.width/slider.size.width)*(10.19/100)),
//            height:(slider.size.height*(inThisScene.size.height/slider.size.height)*(5.73/100)))
        
        /// Start Switch
        gameSwitch = GameSwitch.init(inThisScene: inThisScene, initialValue: false)
        gameSwitch.name = "Start Switch"
        gameSwitch.zPosition = 2
        gameSwitch.position = CGPoint(x: inThisScene.size.width*49.95/100,
                                      y: inThisScene.size.height*90/100)


    }
}
