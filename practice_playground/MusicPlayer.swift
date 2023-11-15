//
//  MusicPlayer.swift
//  practice_playground
//
//  Created by Akhil on 16/11/23.
//

import SwiftUI
import AVKit

struct MusicPlayer: View {
    @State private var isPlaying: Bool = false
    @State private var totalTime: TimeInterval = 0.0
    @State private var currentTime: TimeInterval = 0.0
    let audioFile = "tere_bin"
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer()
    }
}
