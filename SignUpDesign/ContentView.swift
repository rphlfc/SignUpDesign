//
//  ContentView.swift
//  SignUpDesign
//
//  Created by Raphael Cerqueira on 20/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("welcome")
                .font(.system(size: 26, weight: .bold))
                .foregroundColor(Color(#colorLiteral(red: 0.9945890307, green: 0.7944991589, blue: 0.09524076432, alpha: 1)))
            
            HStack {
                Text("Adopt your\nsoulmate here")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                    .padding(.top, 128)
                    .padding(.leading)
                
                Spacer()
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Log In")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color.white)
                    .frame(width: 320, height: 60)
                    .background(Color(#colorLiteral(red: 0.9984225631, green: 0.7985528708, blue: 0.008410367183, alpha: 1)))
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10.0)
            })
            
            HStack {
                Text("Don't have an account?")
                    .font(.system(size: 18, weight: .medium))
                
                Button(action: {}, label: {
                    Text("Sign Up.")
                        .font(.system(size: 18, weight: .bold))
                })
            }
            .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
            .padding(.top, 20)
        }
        .background(
            Capsule()
                .rotationEffect(Angle.degrees(90))
                .foregroundColor(Color(#colorLiteral(red: 0.9990426898, green: 0.9390923381, blue: 0.6660203338, alpha: 1)))
                .frame(width: UIScreen.main.bounds.height, height: UIScreen.main.bounds.width)
                .offset(y: UIScreen.main.bounds.height / 2)
                .overlay(
                    //Text("🐈")
                        //.font(.system(size: 72))
                    Image("cat")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
