//
//  BottomSHeet_Control.swift
//  practice_playground
//
//  Created by Akhil on 05/12/23.
//

import SwiftUI

struct BottomSHeet_Control: View {
    
    @State private var selectedDetent: PresentationDetent = .medium
    @State private var showSheet = false
    var body: some View {
        VStack {
            Button("Show Bottom Sheet") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .sheet(isPresented: $showSheet, content: {
                ZStack {
                    Color.red.opacity(0.9)
                        .blur(radius: 10)
                        .ignoresSafeArea()
                    Text("This is Expendable Bottom Sheet")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 30))
                        .presentationDetents([.height(200), .medium, .large], selection: $selectedDetent)
                        .presentationDragIndicator(.hidden)
                }
            })
            
        }
    }
}

#Preview {
    BottomSHeet_Control()
}
