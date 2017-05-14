//
//  EfiMounter.swift
//  Kexter
//
//  Created by Marc Rousavy on 14/05/2017.
//  Copyright © 2017 mrousavy. All rights reserved.
//

import Foundation

class EfiMounter {
    
    static func MountEfi(){
        shell("diskutil", "list")
    }
    
    
    @discardableResult
    static func shell(_ args: String...) -> Int32 {
        let task = Process()
        task.launchPath = "/usr/bin/env"
        task.arguments = args
        task.launch()
        task.waitUntilExit()
        return task.terminationStatus
    }
}
