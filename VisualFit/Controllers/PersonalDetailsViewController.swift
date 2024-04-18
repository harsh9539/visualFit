//
//  PersonalDetailsViewController.swift
//  VisualFit
//
//  Created by Goyal Harsh on 18/04/24.
//

import UIKit

class PersonalDetailsViewController: UIViewController {

    @IBOutlet weak var HeightUIView: UIView!
    @IBOutlet weak var GenderUIView: UIView!
    @IBOutlet weak var WeightUIView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Gender UI View changes
        // Add rounded corners to top left and top right
        let maskPath = UIBezierPath(roundedRect: GenderUIView.bounds,
                                    byRoundingCorners: [.topLeft, .topRight],
                                    cornerRadii: CGSize(width: 10.0, height: 10.0))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        GenderUIView.layer.mask = maskLayer
        
        // Add bottom border
       let borderLayer = CALayer()
       borderLayer.frame = CGRect(x: 0, y: GenderUIView.frame.height - 1, width: GenderUIView.frame.width, height: 1)
        borderLayer.backgroundColor = UIColor.lightGray.cgColor
       GenderUIView.layer.addSublayer(borderLayer)
        
       /// Height UIView changes
        let borderLayerHeight = CALayer()
        borderLayerHeight.frame = CGRect(x: 0, y: HeightUIView.frame.height - 1, width: HeightUIView.frame.width, height: 1)
         borderLayerHeight.backgroundColor = UIColor.lightGray.cgColor
        HeightUIView.layer.addSublayer(borderLayerHeight)
        
        /// Weight UI View changes
        // Add rounded corners to top left and top right
        let maskPathWeight = UIBezierPath(roundedRect: WeightUIView.bounds,
                                    byRoundingCorners: [.bottomLeft, .bottomRight],
                                    cornerRadii: CGSize(width: 10.0, height: 10.0))
        let maskLayerWeight = CAShapeLayer()
        maskLayerWeight.path = maskPathWeight.cgPath
        WeightUIView.layer.mask = maskLayerWeight
        
    }
    

}
