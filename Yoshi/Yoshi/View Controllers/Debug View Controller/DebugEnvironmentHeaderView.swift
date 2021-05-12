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
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup() {
        UserDefaults.standard.setValue(true, forKey: Constant.forceRestartKey)
        titleLabel.text = "✅ Force Kill"
    }
    
    @IBAction func didTapForceRestart(_ sender: Any) {
        if UserDefaults.standard.bool(forKey: Constant.forceRestartKey) {
            titleLabel.text = "❌ Force Kill"
            UserDefaults.standard.setValue(false, forKey: Constant.forceRestartKey)
        } else {
            titleLabel.text = "✅ Force Kill"
            UserDefaults.standard.setValue(true, forKey: Constant.forceRestartKey)
        }
    }
}
