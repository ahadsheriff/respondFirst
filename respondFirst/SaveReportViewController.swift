//
//  SaveReportViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/15/18.
//

import UIKit

class SaveReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func yesDone(_ sender: Any) {
        print("Yes daddy.")
    }
    
    @IBAction func cancelDone(_ sender: Any) {
        print("cancelling")
    }
    
    @IBAction func callDone(_ sender: Any) {
        print("supernaw")
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
