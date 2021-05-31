//
//  UIWindowSceneExtension.swift
//  Yoshi
//
//  Created by Deepti Dhumavat on 5/31/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation

@available(iOS 13.0, *)
extension UIWindowScene {
    static var focused: UIWindowScene? {
        return UIApplication.shared.connectedScenes
            .first { $0.activationState == .foregroundActive && $0 is UIWindowScene } as? UIWindowScene
    }
}
