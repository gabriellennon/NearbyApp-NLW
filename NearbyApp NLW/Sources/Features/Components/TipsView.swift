//
//  TipsView.swift
//  NearbyApp NLW
//
//  Created by Gabriel Lennon on 08/01/25.
//

import Foundation
import UIKit

public class TipsView: UIView {
    private let iconImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
}
