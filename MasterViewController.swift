//
//  MasterViewController.swift
//  X52DisplayTool
//
//  Created by Bert Ten Cate on 27-12-15.
//  Copyright © 2015 Bert Ten Cate. All rights reserved.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

import Cocoa
import Foundation


class MasterViewController: NSViewController {
    
    @IBOutlet weak var Line1: NSTextField!
    @IBOutlet weak var Line2: NSTextField!
    @IBOutlet weak var Line3: NSTextField!
    @IBOutlet weak var MFDBrightness: NSSlider!
    @IBOutlet weak var LEDBrightness: NSSlider!
    @IBOutlet weak var SelectedLedAll: NSButton!
    @IBOutlet weak var SelectedLedA: NSButton!
    @IBOutlet weak var SelectedLedB: NSButton!
    @IBOutlet weak var SelectedLedD: NSButton!
    @IBOutlet weak var SelectedLedE: NSButton!
    @IBOutlet weak var SelectedLedi: NSButton!
    @IBOutlet weak var SelectedLedT1: NSButton!
    @IBOutlet weak var SelectedLedT2: NSButton!
    @IBOutlet weak var SelectedLedT3: NSButton!
    @IBOutlet weak var SelectedLedPov: NSButton!
    @IBOutlet weak var SelectedLedFire: NSButton!
    @IBOutlet weak var SelectedLedThrottle: NSButton!
    var SelectedColour: String!


    
    //
    // First we check all the buttons for the Pro settings
    //
  
    //
    // If ALL gets checked/unchecked change te state of all the other buttons
    //
    @IBAction func SelectedLedAllChecked(_ sender: NSButton) {
        
        if SelectedLedAll.state == 1 {
            
            SelectedLedA.state = 0
            SelectedLedB.state = 0
            SelectedLedD.state = 0
            SelectedLedE.state = 0
            SelectedLedi.state = 0
            SelectedLedT1.state = 0
            SelectedLedT2.state = 0
            SelectedLedT3.state = 0
            SelectedLedPov.state = 0
            SelectedLedFire.state = 0
            SelectedLedThrottle.state = 0
        }
            
        else {
            SelectedLedA.state = 1
            SelectedLedB.state = 1
            SelectedLedD.state = 1
            SelectedLedE.state = 1
            SelectedLedi.state = 1
            SelectedLedT1.state = 1
            SelectedLedT2.state = 1
            SelectedLedT3.state = 1
            SelectedLedPov.state = 1
            SelectedLedFire.state = 1
            SelectedLedThrottle.state = 1
        }
        
    }
    

    //
    //Select the state/colour button
    //
    @IBAction func ColourButtons(_ sender: NSButton) {
        let cell: NSButtonCell = sender.selectedCell() as! NSButtonCell
        SelectedColour = cell.title
        
    }
    
    
    //
    // Set the default state for the colour buttons
    //
    override func awakeFromNib() {
        let SelectedColourButton = view.viewWithTag(1) as! NSButton
        SelectedColourButton.state = NSOnState
        let cell: NSButtonCell = SelectedColourButton.selectedCell() as! NSButtonCell
        SelectedColour = cell.title
    }
    
    
    //
    // Now we can call HotasCtrl.jar with the values of the buttons
    //
    // Unfortunately we have to call HotasCtrl for every button
    // Setting multiple buttons takes some time...
    //
    @IBAction func SubmitLedColour(_ sender: NSButton) {
        
        if SelectedLedAll.state == 0 {
            
                if SelectedLedA.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","a","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }

                if SelectedLedB.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","b","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedD.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","d","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedE.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","e","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedi.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","i","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedT1.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","t1","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedT2.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","t2","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedT3.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","t3","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedPov.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","pov","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedFire.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","fire","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
                if SelectedLedThrottle.state == 1 {
                    let TaskSubmitLedColour = Process.init()
                    TaskSubmitLedColour.launchPath = JavaPath
                    TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","throttle","\(SelectedColour)"]
                    TaskSubmitLedColour.launch()
                    TaskSubmitLedColour.waitUntilExit()
                }
            
        }
        
        else {
            let TaskSubmitLedColour = Process.init()
            TaskSubmitLedColour.launchPath = JavaPath
            TaskSubmitLedColour.arguments = ["-jar",HotasCtrlPath,"led","all","\(SelectedColour)"]
            TaskSubmitLedColour.launch()
            TaskSubmitLedColour.waitUntilExit()
        }
        
        
    }
    
    
    //
    // Here we call HotasCtrl.jar with the command line actions for MDF and LED Brightness
    //
    @IBAction func MFDBrightnessChange(_ sender: AnyObject) {
        let MFDValue = MFDBrightness.integerValue
        let TaskMFDBrightness = Process.init()
        TaskMFDBrightness.launchPath = JavaPath
        TaskMFDBrightness.arguments = ["-jar",HotasCtrlPath,"light","mfd","\(MFDValue)"]
        TaskMFDBrightness.launch()
    }
    
    
    @IBAction func LEDBrightnessChange(_ sender: AnyObject) {
        let LEDValue = LEDBrightness.integerValue
        let TaskLEDBrightness = Process.init()
        TaskLEDBrightness.launchPath = JavaPath
        TaskLEDBrightness.arguments = ["-jar",HotasCtrlPath,"light","led","\(LEDValue)"]
        TaskLEDBrightness.launch()
    }
    
    
    //
    // This is the action for the MFD text SUBMIT button
    //
    @IBAction func ButtonPress(_ sender: AnyObject) {
        let TaskSubmitTekst = Process.init()
        TaskSubmitTekst.launchPath = JavaPath
        TaskSubmitTekst.arguments = ["-jar",HotasCtrlPath,"line1",Line1.stringValue,"line2",Line2.stringValue,"line3",Line3.stringValue]
        TaskSubmitTekst.launch()
        TaskSubmitTekst.waitUntilExit()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
}
