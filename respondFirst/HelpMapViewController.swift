//
//  HelpMapViewController.swift
//  respondFirst
//
//  Created by Ahad Sheriff on 4/14/18.
//

import UIKit
import Firebase
//import CoreLocation
import MapKit

class HelpMapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var senderID: String! = ""
    var locationManager = CLLocationManager()
    var locValue = CLLocationCoordinate2D()
    //boolean = false
    
    var uid = "greta"
    var ref: DatabaseReference = Database.database().reference()

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let loc: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        //print("locations = \(loc.latitude) \(loc.longitude)")
        locValue = loc;
        initialLocation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(id)

        // Do any additional setup after loading the view.
        locationManager.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.requestLocation()
            locationManager.startUpdatingLocation()
        }
        
        print(locValue.latitude)
        print(locValue.longitude)
        
    }
    
    func initialLocation() {
        let initialLocation = CLLocation(latitude: locValue.latitude, longitude: locValue.longitude)
        centerMapOnLocation(location: initialLocation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendForHelp(_ sender: Any) {
        
        
        
        
        print("You're about to update the database")
        
        let shortLong = Double(round(1000000*locValue.longitude)/1000000)
        let shortLat = Double(round(1000000*locValue.latitude)/1000000)

        
        let timeStamp = Date()
        let flag = true;
        let messageItem = [
            "active": flag,
            "type": "patient",
            "timeStamp": String(describing: timeStamp),
            "longtitude": shortLong,
            "latitude": shortLat
        ] as [String: Any]
        ref.child(id).setValue(messageItem)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while updating location " + error.localizedDescription)
    }
    
    func createLocation(manager: CLLocationManager) {
        //let location:CLLocation = (manager.location)!
        if(manager.location == nil) {
            print("Sorry")
        }else {
        }
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(self.senderID)
        let controller = segue.destination as! HelpStatusViewController
        controller.senderID = self.senderID
    }
    */
}
