//
//  DraggableImageView.swift
//  Tinder
//
//  Created by Evan on 3/24/16.
//  Copyright © 2016 EvanTragesser. All rights reserved.
//

import UIKit

class DraggableImageView: UIImageView {
	
	var profileImage: UIImage? {
		get { return self.profileImage }
		set { self.image = profileImage }
	}
	
	var startPosition: CGPoint?
	
	
	override func awakeFromNib() {
		let panGesture = UIPanGestureRecognizer(target: self, action: #selector(DraggableImageView.onImageDragged(_:)))
		
		self.addGestureRecognizer(panGesture)
	}
	

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

	func onImageDragged(gesture: UIPanGestureRecognizer) {
		if gesture.state == UIGestureRecognizerState.Began {
			startPosition = self.center
		} else if gesture.state == UIGestureRecognizerState.Changed {
			let translation = gesture.translationInView(self.superview)
			self.center = CGPoint(x: startPosition!.x+translation.x, y: startPosition!.y)
		}
	}
}
