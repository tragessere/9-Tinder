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
	
	var originalCenter: CGPoint!
	var startPosition: CGPoint!
	var touchedOnTopHalf: Bool!
	
	override func awakeFromNib() {
		let panGesture = UIPanGestureRecognizer(target: self, action: #selector(DraggableImageView.onImageDragged(_:)))
		
		self.addGestureRecognizer(panGesture)
		
		originalCenter = center
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
			
			let touchPoint = gesture.locationInView(self)
			
			if touchPoint.y > (self.frame.height / 2) {
				touchedOnTopHalf = false
			} else {
				touchedOnTopHalf = true
			}
			
		} else if gesture.state == UIGestureRecognizerState.Changed {
			let translation = gesture.translationInView(self.superview)
			self.center = CGPoint(x: startPosition.x+translation.x, y: originalCenter.y)
			var offset = (center.x - originalCenter.x) / 4
			
			if !touchedOnTopHalf {
				offset *= -1
			}
			
			let rotation = CGAffineTransformRotate(CGAffineTransformIdentity, degreesToRadians(offset))
			self.transform = rotation
		}
	}
	
	func degreesToRadians(angle: CGFloat) -> CGFloat {
		return angle / 180.0 * CGFloat(M_PI)
	}
}
