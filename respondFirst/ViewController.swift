//
//  ViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/14/18.
//

import UIKit
import FirebaseAuth.FIRAuth

var id: String = ""

class ViewController: UIViewController {
    
    var senderID: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Auth.auth().signInAnonymously() { (user, error) in
            if let user = user {
                print("User is signed in with uid: ", user.uid)
                //UserID.senderID = user.uid
                self.senderID = user.uid
                id = user.uid
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

