//
//  AppDelegate.swift
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

var JavaPath: String! = UserDefaults.standard.string(forKey: "JavaPath")
var HotasCtrlPath: String! = UserDefaults.standard.string(forKey: "HotasCtrlPath")

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var masterViewController: MasterViewController!
    var helpMenuHelp: HelpMenuHelp!
    var preferencesWindow: PreferencesWindow!
    
    @IBOutlet weak var window: NSWindow!
    
    @IBAction func PreferencesClicked(_ sender: NSMenuItem) {
        preferencesWindow = PreferencesWindow(nibName: "PreferencesWindow", bundle: nil)
        window.contentView!.addSubview(preferencesWindow.view)
        preferencesWindow.view.frame = (window.contentView! as NSView).bounds
    }
    
    
    @IBAction func HelpClicked(_ sender: NSMenuItem) {
        helpMenuHelp = HelpMenuHelp(nibName: "HelpMenuHelp", bundle: nil)
        window.contentView!.addSubview(helpMenuHelp.view)
        helpMenuHelp.view.frame = (window.contentView! as NSView).bounds
    }

    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        masterViewController = MasterViewController(nibName: "MasterViewController", bundle: nil)
        window.contentView!.addSubview(masterViewController.view)
        masterViewController.view.frame = (window.contentView! as NSView).bounds
        
        //
        // If the application launches for the first time
        // And javapath and hotasctrlpath are NOT set yet
        // Set them with default values
        //
        
        if HotasCtrlPath == nil {
            UserDefaults.standard.set("/usr/local/bin/HotasCtrl.jar", forKey: "HotasCtrlPath")
        }
        
        if JavaPath == nil {
            UserDefaults.standard.set("/usr/bin/java", forKey: "JavaPath")
        }
        
}

    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

