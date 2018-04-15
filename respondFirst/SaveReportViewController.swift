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
    
    @IBAction func yesFinish(_ sender: Any) {
        print("Yes daddy")
    }
    
    @IBAction func cancelFinish(_ sender: Any) {
        print("Nah cancel that bro")
    }
    
    @IBAction func noCall(_ sender: Any) {
        print("Supernaw")
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
