//
//  ContentView.swift
//  practice_playground
//
//  Created by Akhil on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        ZStack {
            Image("back2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
//
            VStack {
                Spacer()
                VStack{
                    Image(systemName: "sheqelsign.square")
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .font(.system(size: 88))
                        .padding(.vertical, 10)
                    
                    Text("Login Page")
                        .font(.headline)
                        .foregroundColor(Color.white.opacity(0.9))
                        .padding(.vertical)
                }
                
                Spacer()
                VStack(alignment: .center){
                    VStack (alignment: .leading, spacing: 5){
                        Text("Username")
                            .font(.system(size: 17))
                            .foregroundColor(.white)
                            .bold()
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 370, height: 50)
                            .foregroundColor(.gray)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 350, height: 45)
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        TextField("UserName", text: $username)
                                        
                                            .padding(.horizontal, 10)
                                            .foregroundColor(Color.black)
                                            .frame(width: 350, height: 45)
                                            .background(Color.clear)
                                        //                                .shadow(color: Color.blue, radius: 1)
                                        //                        .shadow(color: Color.blue.colorInvert(), radius: 8)
                                    )
                            )
                        
                        
                        
                        
                    }
                    
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Password")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                            .bold()

                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 370, height: 50)
                            .foregroundColor(.gray)                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 350, height: 45)
                                    .foregroundColor(Color.white)
                                    .overlay(
                                        SecureField("Password", text: $password)
                                            .padding(.horizontal, 10)
                                            .foregroundColor(Color.black)
                                            .frame(width: 350, height: 45)
                                            .background(Color.clear)
                                    )
                            )
    //                    RoundedRectangle(cornerRadius: 15)
    //                        .frame(width: 230, height: 50)
    //                        .foregroundColor(Color.black)
    //
    //                        .overlay(
    //                            Rectangle()
    //                                .frame(height: 48)
    //                                .foregroundColor(Color.white)
    //
    //                        )
    //                        .foregroundColor(Color.clear) // Set the color you prefer
    ////                        .overlay(
    ////                            RoundedRectangle(cornerRadius: 15)
    ////                                .frame(height: 45)
    ////                                .foregroundColor(Color.black) // Set the color you prefer
    ////                        )
                    }

                    Spacer()
                    
                    Button(action: {
                        print("Button Pressed")
                    }, label: {
                        RoundedRectangle(cornerRadius: 6)
                               .frame(width: 300, height: 30)
                               .foregroundColor(Color.brown.opacity(0.8))
                               .overlay(
                                  RoundedRectangle(cornerRadius: 5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4.5)
                                            .foregroundColor(Color.gray)
                                            .overlay(
                                                
                                                Text("Login")
                                                    )
                                            .foregroundColor(.white)
                                            .font(.headline)
                                    )
                                    
                               )
                        
                    })
                    .buttonStyle(.bordered)
                    
                    Spacer()
                    
                    VStack (alignment: .center, spacing: 4){
                        HStack {
                            Text("Don't have an account yet?")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                
                            
                        }
                        
                        Image("person.fill")
                        NavigationLink(destination: Text("Sign Up"), label: {
                            HStack {
                                Image(systemName: "doc.richtext.ar")
                                    .font(.system(size:23))
                                    .foregroundColor(Color.cyan)
                                Text("Sign Up")
                                    .foregroundColor(Color.cyan)
                                    .font(.system(size: 23))
                                
                            }
                            
                        })
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

