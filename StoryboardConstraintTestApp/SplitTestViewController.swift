//
//  SplitTestViewController.swift
//  StoryboardConstraintTestApp
//
//  Created by racoon on 6/6/24.
//

import UIKit

class SplitTestViewController: UIViewController {

    @IBOutlet weak var macOsWidthSplitConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var macOsCenterXSplitConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var iosWidthSplitConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var iosCenterXSplitConstraint: NSLayoutConstraint!
    
    @IBAction func onPressMacOs(_ sender: Any) {
        macOsWidthSplitConstraint.priority = .required
        macOsCenterXSplitConstraint.priority = .required
        
        iosWidthSplitConstraint.priority = .defaultHigh
        iosCenterXSplitConstraint.priority = .defaultHigh
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func onPressIos(_ sender: Any) {
        iosWidthSplitConstraint.priority = .required
        iosCenterXSplitConstraint.priority = .required
        
        macOsWidthSplitConstraint.priority = .defaultHigh
        macOsCenterXSplitConstraint.priority = .defaultHigh
   
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
