//
//  DebugEnvironmentHeaderView.swift
//  Yoshi
//
//  Created by Kamal Wadhwa on 10/05/21.
//

import UIKit

class DebugEnvironmentHeaderView: UIView {
    
    private struct Constant {
        static let forceRestartKey = "forceRestartKey"
    }
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    func setup() {
        UserDefaults.standard.setValue(true, forKey: Constant.forceRestartKey)
        iconImageView.image = UIImage(named: "checkbox_selected.pdf")
    }
    
    @IBAction func didTapForceRestart(_ sender: Any) {
        if UserDefaults.standard.bool(forKey: Constant.forceRestartKey) {
            iconImageView.image = UIImage(named: "checkbox_unselected.pdf")
            UserDefaults.standard.setValue(false, forKey: Constant.forceRestartKey)
        } else {
            iconImageView.image = UIImage(named: "checkbox_selected.pdf")
            UserDefaults.standard.setValue(true, forKey: Constant.forceRestartKey)
        }
    }
}
