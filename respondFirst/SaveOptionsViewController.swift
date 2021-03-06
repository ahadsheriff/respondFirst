//
//  SaveOptionsViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/15/18.
//

import UIKit
import Firebase

class SaveOptionsViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    var snap: DataSnapshot!
    
    var ref: DatabaseReference = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeText()
        mySwitch.addTarget(self, action: #selector(switchToggled(_:)), for: UIControlEvents.valueChanged)
        if mySwitch.isOn {
            self.ref.child("helper").child(id).setValue(["status": true])

        }
    }

    
    @IBAction func switchToggled(_ sender: Any) {
        changeText()
    }
    
    func changeText() {
        if mySwitch.isOn {
            print("Switch is on")
            self.ref.child(id).setValue(["type": "helper", "status": true])

            ref.observeSingleEvent(of: .value, with: {(snapshot) in
                if let snapshots = snapshot.children.allObjects as? [DataSnapshot] {
                    for child in snapshots {
                        if let children = child.children.allObjects as? [DataSnapshot] {
                            for kid in children {
                                print("Kid :", kid)
                                let data = kid.value as? NSDictionary
                                if let status = data?["active"] as? Bool {
                                    print(status)
                                    if let long = data?["longitude"] as? Double {
                                        print(long)
                                    }
                                }
                            }
                        }
                    }
                }
            })
        } else {
            print("Switch is off")
            self.ref.child(id).setValue(["status": false])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
