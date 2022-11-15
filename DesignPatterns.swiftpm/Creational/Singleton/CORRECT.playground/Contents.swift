
/* THEORETICAL EXAMPLE
 
 public class ExampleSingleton {
 // lazy construction
 // the class variable is null if no instance is instantiated

    private static ExampleSingleton uniqueInstance = null;
     private ExampleSingleton() {
     ...
     }
    
 // lazy construction of the instance
 
    public static ExampleSingleton getInstance() {
        if (uniqueInstance == null) {
         uniqueInstance = new ExampleSingleton();
        }
     return uniqueInstance;
    }
 }
 */

// REAL EXAMPLE

import Foundation

class LocationManager{
    
    static let shared = LocationManager()
    
    var locationGranted: Bool?
    //Initializer access level change now
    private init(){}
    
    func requestForLocation(){
        //Code Process
        locationGranted = true
        print("Location granted")
    }
}
//RUNNIG
LocationManager.shared.requestForLocation()
print(LocationManager.shared.locationGranted ?? false)
