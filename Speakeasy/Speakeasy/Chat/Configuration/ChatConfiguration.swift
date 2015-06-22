//
//  ChatConfiguration.swift
//  Speakeasy
//
//  Created by Robert Wagstaff on 6/22/15.
//  Copyright © 2015 Automagically. All rights reserved.
//

import Foundation

class ChatConfiguration {
    
    class func setupChatConfig() {
        
        QBApplication.sharedApplication().applicationId = 24640
        QBConnection.registerServiceKey("sUC6t9qrzC-qTzf")
        QBConnection.registerServiceSecret("M6HuNKAQ-gYFSvm")
        QBSettings.setAccountKey("qroBzaAq8E1NUttstXsS")
        QBSettings.setLogLevel(.Errors)
        
        ChatAuthManager.createSession()
        
    }
    
    
}