//
//  ProfileViewController.swift
//  Tinder
//
//  Created by Evan on 3/24/16.
//  Copyright © 2016 EvanTragesser. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
	
	@IBOutlet weak var navBarImageView: UIImageView!
	@IBOutlet weak var profileImageView: UIImageView!
	
	var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		let navTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ProfileViewController.didTapNavBar(_:)))
		navBarImageView.addGestureRecognizer(navTapRecognizer)
		
		profileImageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func didTapNavBar(sender: AnyObject) {
		dismissViewControllerAnimated(true, completion: nil)
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
