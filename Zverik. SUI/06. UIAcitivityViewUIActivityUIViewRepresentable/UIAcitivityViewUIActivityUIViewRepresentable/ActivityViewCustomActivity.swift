//
//  ActivityViewCustomActivity.swift
//  UIAcitivityViewUIActivityUIViewRepresentable
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

final class ActivityViewCustomActivity: UIActivity {
    // MARK: - Private properties
    private let customActivityType: UIActivity.ActivityType
    private let activityName: String
    private let activityImageName: String
    private let customActionWhenTapped: () -> Void

    // MARK: - Initializer
    init(title: String, imageName: String, performAction: @escaping () -> Void) {
        self.activityName = title
        self.activityImageName = imageName
        self.customActivityType = UIActivity.ActivityType("Action \(title)")
        self.customActionWhenTapped = performAction
        super.init()
    }

    // MARK: - Overrides
    override var activityType: UIActivity.ActivityType? { customActivityType }
    override var activityTitle: String? { activityName }
    override class var activityCategory: UIActivity.Category { .share }
    override var activityImage: UIImage? { UIImage(named: activityImageName) }
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool { true }
    override func prepare(withActivityItems activityItems: [Any]) { }
    override func perform() { customActionWhenTapped() }
}
