//
//  ContentView.swift
//  practice_playground
//
//  Created by Akhil on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        ZStack {
            Image("back2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                login_Icon()
                
                Spacer()
                CredentialForm()
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
