//
//  toggle_animation.swift
//  practice_playground
//
//  Created by Akhil on 05/12/23.
//

import SwiftUI

struct toggle_animation: View {
    var onImage = "dark"
    var offImage = "light"
    @State private var isEnabled = false
    //MARK: FOR CUSTOM ICON
    @State private var isClicked = false
    var body: some View {
        ScrollView {
            VStack {
//                padding()
                Text("Normal Toggle")
                    .fontWeight(.semibold)
                Toggle("Airplane Mode", isOn: $isEnabled)
                Text("Toggle with SF Icons")
                    .fontWeight(.semibold)
                Toggle(isOn: $isEnabled) {
                    HStack {
                        Text("AirPlane mode")
                        Image(systemName: "airplane")
                    }
                    .font(.system(size: 20))
                }
                Text("Button Toggle Style")
                    .fontWeight(.semibold)
                Toggle("Airplane Mode", isOn: $isEnabled).toggleStyle(.button)
    //            Toggle("Airplane Mode", isOn: $isEnabled).toggleStyle(.switch)
                //IF you want to create any Logo to toggle around
                Text("Toggle Switch with SF Symbol Change on click")
                    .fontWeight(.semibold)
                Toggle(isOn: $isClicked) {
                    Image(systemName: isClicked ?  "cursorarrow.rays" : "rays")
                        .font(.system(size: 50))
                }
                .tint(.red)
                .toggleStyle(.button)
                .clipShape(Circle())
                
                
            }
        }
    }
}

#Preview {
    toggle_animation()
}
