//
//  ActivityView.swift
//  UIAcitivityViewUIActivityUIViewRepresentable
//
//  Created by Гасанов Радим on 18.11.2023.
//

import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIActivityViewController

    let activityItems: [Any]
    let applicationActivities: [UIActivity]?

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
    }
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) { }
}
