//
//  GameScene.swift
//  SuperSpaceMan
//
//  Created by Mitsushige Komiya on 2015/04/12.
//  Copyright (c) 2015年 Apress. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let backgroundNode : SKSpriteNode?
    var playerNode : SKSpriteNode?
    let orbNode : SKSpriteNode?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        // adding the background
        backgroundNode = SKSpriteNode(imageNamed: "Background")
        backgroundNode!.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundNode!.position    = CGPoint(x: size.width / 2.0, y: 0.0)
        addChild(backgroundNode!)
        
        // add the player
        playerNode = SKSpriteNode(imageNamed: "Player")
        playerNode!.physicsBody = SKPhysicsBody(circleOfRadius: playerNode!.size.width / 2)
        playerNode!.physicsBody!.dynamic = true
        playerNode!.position = CGPoint(x: size.width / 2.0, y: 80.0)
        playerNode!.physicsBody!.linearDamping = 1.0
        addChild(playerNode!)
        
        // add the orb object
        orbNode = SKSpriteNode(imageNamed: "PowerUp")
        orbNode!.position = CGPoint(x: 150.0, y: size.height - 25)
        orbNode!.physicsBody = SKPhysicsBody(circleOfRadius: orbNode!.size.width / 2.0)
        orbNode!.physicsBody!.dynamic = false
        addChild(orbNode!)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        playerNode!.physicsBody!.applyImpulse(CGVectorMake(0.0, 40.0))
    }
}
