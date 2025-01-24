//
//  AppRootManager.swift
//  DharmdeepCodingChalange
//
//  Created by Dharmdeep Poojara on 24/01/25.
//

import Foundation

final class AppRootManager: ObservableObject {
    @Published var currentRoot: Roots = .splashView
    
    enum Roots: Int {
        case splashView = 0
        case cityView
    }
}
