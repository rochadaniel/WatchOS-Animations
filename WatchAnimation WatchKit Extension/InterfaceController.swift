//
//  InterfaceController.swift
//  WatchAnimation WatchKit Extension
//
//  Created by Daniel Rocha on 19/10/16.
//  Copyright © 2016 Daniel Rocha. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //MARK: Sliding text interface
    
    @IBOutlet var spacerGroup: WKInterfaceGroup!
    
    @IBAction func animate() {
        animate(withDuration: 0.3, animations: {
            self.spacerGroup.setWidth(0)
        })
    }
    
    @IBAction func reset() {
        self.spacerGroup.setWidth(100)
    }
    
    //MARK: Moving button interface
    @IBOutlet var animateButton: WKInterfaceButton!
    @IBOutlet var buttonSpacerGroup: WKInterfaceGroup!
    var buttonMoved: Bool!
    
    @IBAction func animateMovingButton() {
        if buttonMoved != true {
            animate(withDuration: 0.3, animations: { 
                self.buttonSpacerGroup.setHeight(100)
            })
            
            buttonMoved = true
            animateButton.setTitle("Reset")
        } else {
            animate(withDuration: 0.3, animations: {
                self.buttonSpacerGroup.setHeight(0)
            })
            
            buttonMoved = false
            animateButton.setTitle("Animate!")
        }
    }
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
