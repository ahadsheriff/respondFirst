//
//  DoneViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/15/18.
//

import UIKit

class DoneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func callDone(_ sender: Any) {
        guard let number = URL(string: "tel://" + "4256775891") else { return }
        UIApplication.shared.open(number)
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
