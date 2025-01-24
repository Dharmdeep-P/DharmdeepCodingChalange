//
//  DharmdeepCodingChalangeApp.swift
//  DharmdeepCodingChalange
//
//  Created by Dharmdeep Poojara on 24/01/25.
//

import SwiftUI

@main
struct DharmdeepCodingChalangeApp: App {
    @StateObject private var appRootManager = AppRootManager()
    
    var body: some Scene {
        WindowGroup {
            switch appRootManager.currentRoot {
            case .splashView:
                SplaceView()
            case .cityView:
                CityView()
            }
        }
        .environmentObject(appRootManager)
    }}
