//
//  Telco.swift
//  telco_demo
//
//  Created by Axel Kee on 15/02/2017.
//  Copyright © 2017 Sweatshop. All rights reserved.
//

import UIKit

import CoreTelephony

class Telco: NSObject {

	func carrierName() -> String{
		
		// Check environment variable for UI Testing
		let envVars = ProcessInfo.processInfo.environment
		if envVars["carrier"] != nil {
			return envVars["carrier"]!
		}
		
		// Setup the Network Info and create a CTCarrier object
		let networkInfo = CTTelephonyNetworkInfo()
		
		if let carrier = networkInfo.subscriberCellularProvider{
			if let name = carrier.carrierName{
				return name
			} else {
				return ""
			}
		}
		
		// return blank if no phone capability
		return ""
		
	}
}
