//
//  InfoViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/15/18.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func one(_ sender: Any) {
        openUrl(urlStr: "http://harmreduction.org/issues/overdose-prevention/overview/overdose-basics/recognizing-opioid-overdose/")
    }
    
    @IBAction func two(_ sender: Any) {
        openUrl(urlStr: "http://harmreduction.org/issues/overdose-prevention/overview/overdose-basics/responding-to-opioid-overdose/")
    }
    
    @IBAction func three(_ sender: Any) {
        openUrl(urlStr: "http://harmreduction.org/issues/overdose-prevention/overview/overdose-basics/responding-to-opioid-overdose/administer-naloxone/")
    }
    
    @IBAction func four(_ sender: Any) {
        openUrl(urlStr: "http://harmreduction.org/issues/overdose-prevention/")
    }
    
    @IBAction func donate(_ sender: Any) {
        openUrl(urlStr: "https://donorbox.org/harm-reduction-coalition-donations")
    }
    
    func openUrl(urlStr:String!) {
        
        if let url = NSURL(string:urlStr) {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
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
