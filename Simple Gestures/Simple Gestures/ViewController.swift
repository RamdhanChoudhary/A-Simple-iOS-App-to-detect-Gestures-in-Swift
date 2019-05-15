//
//  ViewController.swift
//  Simple Gestures
//
//  Created by RAMDHAN CHOUDHARY on 15/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addGestures()
    }

    // MARK: Add Gestures to target view
    func addGestures()
    {
        // 1. Single Tap or Touch
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGetstureDetected))
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
        
        //2. Double Tap
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(self.doubleTapGestureDetected))
        doubleTapGesture.numberOfTapsRequired = 2
        view.addGestureRecognizer(doubleTapGesture)
        
        //3. Swipe
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGetstureDetected))
        view.addGestureRecognizer(swipeGesture)
        
        //4. Pinch
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchGetstureDetected))
        view.addGestureRecognizer(pinchGesture)
        
        //5. Long Press
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longPressGetstureDetected))
        view.addGestureRecognizer(longPressGesture)
        
        //6. Pan
        let panGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.panGestureDetected))
        view.addGestureRecognizer(panGesture)
        
    }
    
    // MARK: Handle Gesture detection
    @objc func swipeGetstureDetected() {
        print("Swipe Gesture detected!!")
    }
    
    @objc func tapGetstureDetected() {
        print("Touch/Tap Gesture detected!!")
    }
    
    @objc func pinchGetstureDetected() {
        print("Pinch Gesture detected!!")
    }
    
    @objc func longPressGetstureDetected() {
        print("Long Press Gesture detected!!")
    }
    
    @objc func doubleTapGestureDetected() {
        print("Double Tap Gesture detected!!")
    }

    @objc func panGestureDetected()
    {
        print("Pan Gesture detected!!")
    }
    
    
    //MARK: Shake Gesture
    override func becomeFirstResponder() -> Bool {
        return true
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake
        {
            print("Shake Gesture Detected")
        }
    }
}

