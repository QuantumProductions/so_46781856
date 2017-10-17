//
//  ViewController.swift
//  SwipeDetection
//
//  Created by quantum on 17/10/2017.
//  Copyright © 2017 Quantum Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view1.backgroundColor = UIColor.red
        view.addSubview(view1)
        
        view2 = UIView(frame: CGRect(x: 100, y: 0, width: 100, height: 100))
        view2.backgroundColor = UIColor.blue
        view.addSubview(view2)
        
        let swipeRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeDetected(_:)))
        swipeRecognizer.direction = .right
        view.addGestureRecognizer(swipeRecognizer)
        
    }
    
    func swipeDetected(_ sender: UIGestureRecognizer) {
        let location = sender.location(ofTouch: 0, in: view2)
        print("Location in view2")
        print(location)
        print("You swiped right")
    }

    

}

