//
//  ViewController.swift
//  Tinder
//
//  Created by Evan on 3/24/16.
//  Copyright © 2016 EvanTragesser. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
	@IBOutlet weak var profileImageView: UIImageView!
	
	var imageStartPosition: CGPoint?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func onProfileDragged(gesture: UIPanGestureRecognizer) {
		let profileImageView = gesture.view as! UIImageView
		
		if gesture.state == UIGestureRecognizerState.Began {
			imageStartPosition = profileImageView.center
		} else if gesture.state == UIGestureRecognizerState.Changed {
			let translation = gesture.translationInView(view)
			profileImageView.center = CGPoint(x: imageStartPosition!.x+translation.x, y: imageStartPosition!.y)
		}
	}
}

