//
//  GameScene.swift
//  Fred Remastered
//
//  Created by Fernando Vazquez on 9/5/18.
//  Copyright © 2018 Fernando Vasquez. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var fredGameStateMachine: GKStateMachine!
    
    var previousUpdateTime: TimeInterval = 0
    
    var gameViewController: GameViewController
    
    var gameControls: GameControls!
    
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        gameViewController = referenceGVC
        
        super.init(size: sceneSize)
        
        gameControls = GameControls.init(inThisScene: self)
        
//        if let skView = gameViewController.view as! SKView? {
////            self.size = skView.bounds.size
////            self.scaleMode = .aspectFill
////            self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
//        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: UIView) {
    
//        self.backgroundColor = UIColor.clear
        
        self.addChild(gameControls.frame)
        self.addChild(gameControls.gray60Button1)
        self.addChild(gameControls.gray60Button2)
        self.addChild(gameControls.gray60Button3)
        self.addChild(gameControls.gray60Button4)
        self.addChild(gameControls.gray60Button5)
        self.addChild(gameControls.gray60Button6)
        self.addChild(gameControls.gray60Button7)
        self.addChild(gameControls.gray60Button8)
        self.addChild(gameControls.gray60Button9)
        self.addChild(gameControls.gray60Button10)
        self.addChild(gameControls.gray60Button11)
        self.addChild(gameControls.gray60Button12)
//        self.addChild(gameControls.sliderSlot)
//        self.addChild(gameControls.slider)
        self.addChild(gameControls.gameSwitch)

    }
}
