//
//  ChatAuthManager.swift
//  Speakeasy
//
//  Created by Robert Wagstaff on 6/22/15.
//  Copyright © 2015 Automagically. All rights reserved.
//

import Foundation

class ChatAuthManager {
    
    class func createSession() {
    
        QBRequest.createSessionWithSuccessBlock({ (response:QBResponse!, session:QBASession!) -> Void in
                print("Session created successfully")
            }) { (response:QBResponse!) -> Void in
                print("error creating session")
        }
    }
    
    class func signUpUser(username:String, password:String) {
        
        let newUser = QBUUser()
        newUser.login = username
        newUser.password = password
        
        QBRequest.signUp(newUser, successBlock: { (response:QBResponse!, user:QBUUser!) -> Void in
                print("Success! Signed Up")
            }) { (response:QBResponse!) -> Void in
                print("Failure \(response)")
        }
    }
}