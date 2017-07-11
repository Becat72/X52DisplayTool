//
//  Preferences.swift
//  X52DisplayTool
//
//  Created by Bert Ten Cate on 02-01-16.
//  Copyright © 2016 Bert Ten Cate. All rights reserved.
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

class PreferencesWindow: NSViewController {
    @IBOutlet weak var SetJavaPath: NSTextField!
    @IBOutlet weak var SetHotasCtrlPath: NSTextField!    
    
    @IBAction func SaveClicked(_ sender: NSButton) {
        UserDefaults.standard.set(SetJavaPath.stringValue, forKey: "JavaPath")
        UserDefaults.standard.set(SetHotasCtrlPath.stringValue, forKey: "HotasCtrlPath")
        JavaPath = UserDefaults.standard.string(forKey: "JavaPath")
        HotasCtrlPath = UserDefaults.standard.string(forKey: "HotasCtrlPath")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
