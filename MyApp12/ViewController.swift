//
//  ViewController.swift
//  MyApp12
//
//  Created by iii-user on 2017/6/29.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func test1(_ sender: Any) {
       let darkEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let darkView = UIVisualEffectView(effect: darkEffect)
        darkView.frame = welcome.bounds
        welcome.addSubview(darkView)
    }
    @IBAction func test2(_ sender: Any) {
        UIView.animate(withDuration: 2, animations: {() in
            self.apple.center.x += 100
            self.apple.center.y -= 100
            self.user.center.y += 100
        })
        UIView.animate(withDuration: 2, delay: 2, options: UIViewAnimationOptions.allowAnimatedContent, animations: {() in
            self.apple.center.x += 100
        
        
        }, completion: nil)
        
    }
    @IBAction func test3(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 2, delay: 0, options: UIViewAnimationOptions.allowAnimatedContent, animations: {() in
           self.apple.center.x += 200
            
            
        }, completion: {(isFinish) in
            UIView.animate(withDuration: 2, animations: {()in
            
            self.user.center.y -= 100
            })
        
        })
    }
    @IBAction func test4(_ sender: Any) {
        
        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.allowAnimatedContent, animations: {()in self.user.transform = CGAffineTransform(scaleX:2,y:2)}, completion: {(isOK) in UIView.animate(withDuration: 1, animations:{()in self.user.transform = CGAffineTransform(scaleX: 1, y: 1)})})
        
        
        
//        UIView.animate(withDuration: 1, animations: {() in
//           self.user.transform = CGAffineTransform(scaleX: 2, y: 2)//相對於原圖的值
        
        
//        })
    
    }
    
    
    
    @IBAction func test5(_ sender: Any) {
        
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.25, initialSpringVelocity: 0.5, options: .allowAnimatedContent
            
            , animations: {()in
        self.user.transform = CGAffineTransform(scaleX:2,y:2)
                
                
                
                
        }, completion: nil)
        
        
        
    }
    
    @IBAction func test6(_ sender: Any) {
        
        let anim = UIDynamicAnimator(referenceView: view)
        
        let beh = UIGravityBehavior(items: [apple])
        beh.gravityDirection = CGVector(dx: 0, dy: 1)
        anim.addBehavior(beh)
    }
    
    
    
    
    @IBOutlet weak var welcome: UIImageView!
    
    @IBOutlet weak var user: UIImageView!
    
    @IBOutlet weak var apple: UIImageView!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

