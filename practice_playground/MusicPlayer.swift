//
//  MusicPlayer.swift
//  practice_playground
//
//  Created by Akhil on 16/11/23.
//

import SwiftUI
import AVKit

struct MusicPlayer: View {
    // MARK: Variables
    
    @State private var player: AVAudioPlayer?
    @State private var isPlaying: Bool = false
    @State private var totalTime: TimeInterval = 0.0
    @State private var currentTime: TimeInterval = 0.0
    @State private var animationContent: Bool = false
    let audioFileName = "tere_bin"
    
    @Binding var expandedSheet: Bool
    var animatoin: Namespace.ID

    
    var body: some View {
        GeometryReader{
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            
            
            ZStack {
//                LinearGradient(colors: [Color.red, Color.gray], startPoint: .leading, endPoint: .topTrailing)
                 Rectangle()
                    .fill(.ultraThickMaterial)
                    .overlay(content: {
                        Image("Coldplay")
                            .blur(radius: 55)
//                            .opacity(animationContent ? 1: 0)
                            
                    })
//                    .matchedGeometryEffect(id: "BGVIEW", in: animatoin)
                
                VStack(spacing: 15){
                    GeometryReader{
                        let size = $0.size
//                        let safeArea = $0.safeAreaInsets
                    }
                }
            }
        }
         }
    
    private func setupAudio() {
        guard let url = Bundle.main.url(forResource: audioFileName , withExtension: "mp3") else {
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            totalTime = player?.duration ?? 0.0
        } catch {
            print("Error loading Audio: \(error)")
        }
    }
    
    private func playAudio() {
        player?.play()
        isPlaying = true
    }
    private func stopAudio(){
        player?.pause()
        isPlaying = false
    }
    private func updateProgress(){
        guard let player = player else {return}
        currentTime = player.currentTime
    }
    
    private func seekAudio(to time: TimeInterval){
        player?.currentTime = time
    }
    
    private func timeString(time: TimeInterval) -> String {
        let minute = Int(time) / 60
        let seconds = Int(time) % 60
        
        return String(format: "%02d:%02d", minute, seconds)
    }

}

// MARK: Preview
struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer(expandedSheet: .constant(true), animatoin: Namespace().wrappedValue)
            .preferredColorScheme(.dark)
    }
}


// MARK: Extension

extension View {
    var deviceCornerRadius: CGFloat {
        
        
       let key = "_displayCornerRadius"
        
       if let screen = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.screen{
            if let cornerRadius = screen.value(forKey: key ) as? CGFloat {
                return cornerRadius
            }
            return 0
            
        }
        return 0
    }
}
