//
//  AuthService.swift
//  breakpoint
//
//  Created by Artur Zarzecki on 04/03/2021.
//

import Foundation
import Firebase


class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) { // if is not compleete print error if it is ok it will not call error thats why it is optional
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in // build in function from Firebase
            guard let user = authResult?.user, error == nil else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.providerID , "email": user.email ]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
            userCreationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if error != nil {
                loginComplete(false, error)
            }
            loginComplete(true, nil)
        }
    }
}
