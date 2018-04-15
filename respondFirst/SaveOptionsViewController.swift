//
//  SaveOptionsViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/15/18.
//

import UIKit

class SaveOptionsViewController: UIViewController {
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeText()
        mySwitch.addTarget(self, action: #selector(switchToggled(_:)), for: UIControlEvents.valueChanged)
    }

    
    @IBAction func switchToggled(_ sender: Any) {
        changeText()
    }
    
    func changeText() {
        if mySwitch.isOn {
            print("Switch is on")
        } else {
            print("Switch is off")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
