//
//  HelpMapViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/14/18.
//

import UIKit
import Firebase
import SwiftyJSON

class HelpMapViewController: UIViewController {
    
    var uid = "greta"
    var ref: DatabaseReference = Database.database().reference()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        write()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendForHelp(_ sender: Any) {
        print("Hello")
        write()
    }
    
    func write() {
        self.ref.child("users").setValue(["username": uid])

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
