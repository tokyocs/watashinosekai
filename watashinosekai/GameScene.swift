//
//  GameScene.swift
//  watashinosekai
//
//  Created by tcs17079 on 2019/07/16.
//  Copyright © 2019 tcs17079. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene,AVAudioPlayerDelegate {
    var hero: SKSpriteNode!
    var gakkou: SKSpriteNode!
    var syuonna: SKSpriteNode!
    var audioPlayer: AVAudioPlayer!
    var uebotann:SKSpriteNode!
    var sitabotnn:SKSpriteNode!
    var migibotann:SKSpriteNode!
    var hidaribotann:SKSpriteNode!
    var mannnakamati:SKSpriteNode!
    func playSound(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        
        do {
            // AVAudioPlayerのインスタンス化
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            // AVAudioPlayerのデリゲートをセット
            audioPlayer.delegate = self

            // 音声の再生
            audioPlayer.play()
        } catch {
        }
    }
    func playBGM(name: String) {
        guard let path = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }
        
        do {
            // AVAudioPlayerのインスタンス化
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            // AVAudioPlayerのデリゲートをセット
            audioPlayer.delegate = self
            audioPlayer.numberOfLoops = -1
            
            // 音声の再生
            audioPlayer.play()
        } catch {
        }
    }
    
    override func didMove(to view: SKView) {
    
        self.hero = SKSpriteNode(imageNamed: "syuototko")
        self.hero.position = CGPoint(x:0,y:-200)
        self.hero.zPosition = 2
        self.hero.xScale = 0.09
        self.hero.yScale = 0.09
        addChild(self.hero)
        
        self.gakkou = SKSpriteNode(imageNamed: "gakkou")
        self.gakkou.position = CGPoint(x:10,y:-0)
        self.gakkou.zPosition = 0
        self.gakkou.xScale = 0.4
        self.gakkou.yScale = 0.44
        addChild(self.gakkou)
        
        self.syuonna = SKSpriteNode(imageNamed: "syuonna")
        self.syuonna.position = CGPoint(x:12,y:-198)
        self.syuonna.zPosition = 1
        self.syuonna.xScale = 0.07
        self.syuonna.yScale = 0.07
        addChild(self.syuonna)
        
        self.uebotann = SKSpriteNode(imageNamed: "uebotann")
        self.uebotann.position = CGPoint(x:250,y:-55)
        self.uebotann.zPosition = 3
        self.uebotann.xScale = 0.3
        self.uebotann.yScale = 0.3
        addChild(self.uebotann)
        
        self.sitabotnn = SKSpriteNode(imageNamed: "sitabotann")
        self.sitabotnn.position = CGPoint(x:250,y:-190)
        self.sitabotnn.zPosition = 3
        self.sitabotnn.xScale = 0.3
        self.sitabotnn.yScale = 0.3
        addChild(self.sitabotnn)
        
        self.migibotann = SKSpriteNode(imageNamed: "migibotann")
        self.migibotann.position = CGPoint(x:320,y:-121)
        self.migibotann.zPosition = 3
        self.migibotann.xScale = 0.3
        self.migibotann.yScale = 0.3
        addChild(self.migibotann)
        
        self.hidaribotann = SKSpriteNode(imageNamed:"hidaribotann")
        self.hidaribotann.position = CGPoint(x:180,y:-121)
        self.hidaribotann.zPosition = 3
        self.hidaribotann.xScale = 0.3
        self.hidaribotann.yScale = 0.3
        addChild(self.hidaribotann)
        
        self.mannnakamati = SKSpriteNode(imageNamed:"mannnakamati")
        self.mannnakamati.position = CGPoint(x:0,y:0)
        self.mannnakamati.zPosition = 1
        self.mannnakamati.xScale = 0.235
        self.mannnakamati.yScale = 0.175
        addChild(self.mannnakamati)
        
      playBGM(name: "Summer_Beach_Ambience")
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
        for touch: AnyObject in touches {
            let location = touch.location(in:self)
            let touchNode = self.atPoint(location)
            if touchNode == migibotann{
                let moveToRight = SKAction.moveTo(x:self.hero.position.x + 30,duration:0.2)
                hero.run(moveToRight)
                
            }else if touchNode == hidaribotann {
                let moveToLeft = SKAction.moveTo(x: self.hero.position.x - 30, duration: 0.2)
                hero.run(moveToLeft)
            }else if touchNode == sitabotnn{
                // 下に動く動きを指定する。
                let moveToUp = SKAction.moveTo(y: self.hero.position.y - 30, duration: 0.2)
                // 下に動かす。
                hero.run(moveToUp)
                // 上のボタンが押されたら上に30px動かす。
            }else if touchNode == uebotann {
                // 上に動く動きを指定する。
                let moveToUp = SKAction.moveTo(y: self.hero.position.y + 30, duration: 0.2)
                // 上に動かす。
                hero.run(moveToUp)

                
                
                
                
            }
            
        }
     
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
    }
}
