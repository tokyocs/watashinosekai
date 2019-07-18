//
//  GameScene.swift
//  watashinosekai
//
//  Created by tcs17079 on 2019/07/16.
//  Copyright © 2019 tcs17079. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
    var hero: SKSpriteNode!
    var gakkou: SKSpriteNode!
    var syuonna: SKSpriteNode!
    
    override func didMove(to view: SKView) {
    
        self.hero = SKSpriteNode(imageNamed: "syuototko")
        self.hero.position = CGPoint(x:0,y:-200)
        self.hero.xScale = 0.09
        self.hero.yScale = 0.09
        addChild(self.hero)
        
        self.gakkou = SKSpriteNode(imageNamed: "gakkou")
        self.gakkou.position = CGPoint(x:10,y:-0)
        self.gakkou.xScale = 0.4
        self.gakkou.yScale = 0.4
        addChild(self.gakkou)
        self.syuonna = SKSpriteNode(imageNamed: "syuonna")
        self.syuonna.position = CGPoint(x:12,y:-198)
        self.syuonna.xScale = 0.07
        self.syuonna.yScale = 0.07
        addChild(self.syuonna)
        // Get label node from scene and store it for use later
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    }
}
