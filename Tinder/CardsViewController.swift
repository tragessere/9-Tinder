//
//  ViewController.swift
//  Tinder
//
//  Created by Evan on 3/24/16.
//  Copyright © 2016 EvanTragesser. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
	@IBOutlet weak var profileImageView: DraggableImageView!
	
	var imageStartPosition: CGPoint?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		profileImageView.image = UIImage(named: "ryan")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

