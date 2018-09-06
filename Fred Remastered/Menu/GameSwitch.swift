//
//  MenuSlider.swift
//  Fred Remastered
//
//  Created by Fernando Vazquez on 9/6/18.
//  Copyright © 2018 Fernando Vasquez. All rights reserved.
//

import SpriteKit

class GameSwitch: SKNode {
    
    // MARK: Properties
    
    /// Switch Track, Bar and Label
    var sliderSlot: SKSpriteNode!
    var slider: SKSpriteNode!
//    var labelInsideSwitch: SKLabelNode!
    
    /// Points
    let offPoint: CGFloat = -40
    let onPoint: CGFloat = 40
    let fallPoint: CGFloat = 0
    
    /// State
    var beingSet = false
    
    /// SliderSK Value
    var valueSwitch: Bool = false {
        didSet {
            if valueSwitch {
                slider.position.x = onPoint
            }
            else {
                slider.position.x = offPoint
            }
        }
    }
    
    // MARK: Initializers
    
    init(inThisScene: GameScene, initialValue: Bool) {
        super.init()
        
        /// Values initialization
        self.valueSwitch = initialValue
        
        /// Label Value setup
//        labelInsideSwitch = SKLabelNode(fontNamed: "Play")
//        labelInsideSwitch.text = ""
//        labelInsideSwitch.fontSize = 48
//        labelInsideSwitch.fontColor = .white
//        labelInsideSwitch.horizontalAlignmentMode = .center
//        labelInsideSwitch.verticalAlignmentMode = .center
//        labelInsideSwitch.zPosition = 2
//        labelInsideSwitch.position = CGPoint(x: 0, y: 0)
        
        // sliderSlot
        sliderSlot = SKSpriteNode.init(imageNamed: "sliderSlot")
        sliderSlot.zPosition = 1
        sliderSlot.position = CGPoint(x: 0, y: 0)
//        sliderSlot.position = CGPoint(x: inThisScene.size.width*49.95/100,
//                                      y: inThisScene.size.height*90/100)
        sliderSlot.size = CGSize(
            width:(sliderSlot.size.width * (inThisScene.size.width/sliderSlot.size.width)*(36.76/100)),
            height:(sliderSlot.size.height * (inThisScene.size.height/sliderSlot.size.height)*(7.92/100)))

        // slider
        slider = SKSpriteNode.init(imageNamed: "slider")
        slider.zPosition = 3
        slider.position = CGPoint(x: -40, y: 0)
//        slider.position = CGPoint(x: inThisScene.size.width*38.33/100,
//                                  y: inThisScene.size.height*90/100)
        slider.size = CGSize(
            width:(slider.size.width*(inThisScene.size.width/slider.size.width)*(10.19/100)),
            height:(slider.size.height*(inThisScene.size.height/slider.size.height)*(5.73/100)))
        
        // Add to SliderSK Node
        addChild(sliderSlot)
        addChild(slider)
//        addChild(labelInsideSwitch)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func movingSwitch(point: CGFloat) {
        if point > onPoint {
            slider.position.x = onPoint
        }
        else {
            if point < offPoint {
                slider.position.x = offPoint
            }
            else {
                slider.position.x = point
            }
        }
    }
    
    func setFromPosition() -> Bool {
        if slider.position.x > fallPoint {
            valueSwitch = true
            return true
        }
        else {
            valueSwitch = false
            return false
        }
    }
    
}
