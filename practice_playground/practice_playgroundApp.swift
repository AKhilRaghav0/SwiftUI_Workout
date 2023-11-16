//
//  practice_playgroundApp.swift
//  practice_playground
//
//  Created by Akhil on 15/11/23.
//

import SwiftUI

@main
struct practice_playgroundApp: App {
    var body: some Scene {
        WindowGroup {
            MusicPlayer(expandedSheet: .constant(true), animatoin: Namespace().wrappedValue)
               
        }
    }
}
