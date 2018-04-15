//
//  HelpStatusViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/14/18.
//

import UIKit
import Firebase

class HelpStatusViewController: UIViewController {

    var senderID: String! = ""
    
    var ref: DatabaseReference = Database.database().reference()

    let cancel = ["active": false];
    var mySubstring: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(id)        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelHelp(_ sender: Any) {
        print("You're trying to cancel")
        ref.child(id).setValue(["active": false])
    }

    /*
    @IBAction func cancelHelp(_ sender: Any) {
        //let key = ref.child(self.senderID!)
        //key.updateChildValues(cancel)
        print("You're trying to cancel")
        self.ref.child(id).setValue(["active": false])
        //key.updateChildValues(["longitude": 1234])

    }
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
