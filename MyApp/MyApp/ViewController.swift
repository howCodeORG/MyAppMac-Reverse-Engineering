//
//  ViewController.swift
//  MyApp
//
//  Created by Francis McNamee on 21/12/2016.
//  Copyright © 2016 Francis McNamee. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var unlockButton: NSButton!
    
    @IBOutlet weak var unlockBox: NSTextField!
    
    @IBOutlet weak var unlockLabel: NSTextField!
    
    private var unlockCodes : [String] = ["A1-B2-C3", "D2-E3-F4", "X1-Y2-Z3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    private func unlockApp() {
        
        for unlockCode :String in unlockCodes {
            
            if unlockBox.stringValue == unlockCode {
                unlockBox.isEnabled = false
                unlockButton.isEnabled = false
                unlockLabel.stringValue = "Unlocked!"
                return
                
            }
        
        }
        let alert = NSAlert()
        alert.messageText = "Invalid Code"
        alert.informativeText = "The unlock code you supplied is not valid!"
        alert.addButton(withTitle: "OK")
        alert.runModal()
        
    }

    @IBAction func unlockButtonClicked(_ sender: Any) {
        
        unlockApp()
        
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

