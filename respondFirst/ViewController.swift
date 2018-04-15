//
//  ViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/14/18.
//

import UIKit
import FirebaseAuth.FIRAuth

class ViewController: UIViewController {
    
    var userID: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Auth.auth().signInAnonymously() { (user, error) in
            if let user = user {
                print("User is signed in with uid: ", user.uid)
                self.userID = user.uid
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func anonAuth(_ sender: Any) {
        
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is HelpMapViewController
        {
            let vc = segue.destination as? HelpMapViewController
            vc?.userID = userID
        }
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(self.userID)
        let controller = segue.destination as! HelpMapViewController
        controller.senderID = self.userID
    }
    
    
    
}

