//
//  ViewController.swift
//  telco_demo
//
//  Created by Axel Kee on 15/02/2017.
//  Copyright © 2017 Sweatshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var telcoImage: UIImageView!
	@IBOutlet weak var promotionLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func viewWillAppear(_ animated: Bool) {
		showPromotionForTelco()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	
	func showPromotionForTelco(){
		
		switch Telco.carrierName(){
			case "U Mobile",
			     "U MOBILE":
				telcoImage.image = UIImage(named: "umobile")
				promotionLabel.text = "No promotion for U Mobile user! 😝"
			
			case "MY MAXIS",
			     "MAXIS":
				telcoImage.image = UIImage(named: "maxis")
				promotionLabel.text = "Maxis user get 10% off!"
			
			case "DIGI",
			     "DiGi":
				telcoImage.image = UIImage(named: "digi")
				promotionLabel.text = "Digi user get 30% off!"
			
			case "CELCOM":
				telcoImage.image = UIImage(named: "celcom")
				promotionLabel.text = "Celcom user get 50% off!"
			
			default:
				telcoImage.image = UIImage(named: "asriel")
				promotionLabel.text = "No SIM Card"
		}
	}
}

