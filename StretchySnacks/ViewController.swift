//
//  ViewController.swift
//  StretchySnacks
//
//  Created by Sofia Knezevic on 2017-03-18.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var stretchySnackView: UIView!
    
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func plusIconPressed(_ sender: UIButton) {
        

        
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 0.4,initialSpringVelocity: 0, options:.beginFromCurrentState, animations: {
            
            switch self.heightConstraint.constant {
            case 66:
                
                self.heightConstraint.constant = 200
                sender.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_4))
                
                
            case 200:
                
                self.heightConstraint.constant = 66
                sender.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
                
                
            default:
                break
            }

            self.view.layoutIfNeeded()
                        
            
        }, completion: nil)
        
    }
    

    
    func addStackView() -> Void {
        
        
        
        let container = UILayoutGuide()
        view.addLayoutGuide(container)
        
        
        
    }

}

