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
        let timeStamp = Date()
        let flag = true;
        print("You're about to update the database")
        self.ref.child("patient").child(id).setValue(["active": flag, "timeStamp": String(describing: timeStamp), "longtitude": locValue.longitude, "latitude": locValue.latitude])
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
