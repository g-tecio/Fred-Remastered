//
//  GameViewController.swift
//  Fred Remastered
//
//  Created by Fernando Vazquez on 9/5/18.
//  Copyright © 2018 Fernando Vasquez. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    let skView = SKView()
    
    var gameScene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        skView.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
        skView.center = self.view.center
        skView.contentMode = .scaleAspectFill
        skView.allowsTransparency = true
        skView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        
        gameScene = GameScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        skView.presentScene(gameScene)
        
        view.addSubview(skView)
            }

    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone || UIDevice.current.userInterfaceIdiom == .pad {
            return .portrait
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
