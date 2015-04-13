//
//  GameViewController.swift
//  SuperSpaceMan
//
//  Created by Mitsushige Komiya on 2015/04/12.
//  Copyright (c) 2015年 Apress. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as SKView
        skView.showsFPS = true
        
        scene = GameScene(size: skView.bounds.size);
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene);
    }
}
