//
//  SignUpView.swift
//  SignUpDesign
//
//  Created by Raphael Cerqueira on 22/09/20.
//

import SwiftUI

struct SignUpView: View {
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var isPasswordVisible = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "square.and.arrow.down")
                            .font(.system(size: 24))
                            .foregroundColor(Color(#colorLiteral(red: 0.9945890307, green: 0.7944991589, blue: 0.09524076432, alpha: 1)))
                            .rotationEffect(Angle.degrees(90))
                    }
                    
                    Spacer()
                    
                    Text("Sign Up")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("User name")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.9254091382, green: 0.9255421162, blue: 0.9253800511, alpha: 1)))
                            .overlay(
                                TextField("", text: self.$username)
                                    .padding(.horizontal, 8)
                            )
                    }
                    .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Email")
                            .keyboardType(.emailAddress)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.9254091382, green: 0.9255421162, blue: 0.9253800511, alpha: 1)))
                            .overlay(
                                TextField("", text: self.$email)
                                    .padding(.horizontal, 8)
                            )
                    }
                    .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Password")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.9254091382, green: 0.9255421162, blue: 0.9253800511, alpha: 1)))
                            .overlay(
                                HStack {
                                    if isPasswordVisible {
                                        TextField("", text: self.$password)
                                    } else {
                                        SecureField("", text: self.$password)
                                    }
                                    
                                    Button(action: {
                                        self.isPasswordVisible.toggle()
                                    }, label: {
                                        Image(systemName: self.isPasswordVisible ? "eye" : "eye.slash")
                                            .font(.system(size: 20))
                                            .foregroundColor(Color(#colorLiteral(red: 0.8273780942, green: 0.8274977207, blue: 0.8273518085, alpha: 1)))
                                    })
                                }
                                .padding(.horizontal, 8)
                            )
                    }
                    .padding(.top)
                    
                    Button(action: {}, label: {
                        Text("Log In")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color.white)
                            .frame(width: 320, height: 60)
                            .background(Color(#colorLiteral(red: 0.9984225631, green: 0.7985528708, blue: 0.008410367183, alpha: 1)))
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 10.0)
                    })
                    .padding(.top)
                    
                    Text("Or")
                        .foregroundColor(Color(#colorLiteral(red: 0.9984225631, green: 0.7985528708, blue: 0.008410367183, alpha: 1)))
                        .padding(.top)
                    
                    HStack {
                        Button(action: {}, label: {
                            Image("facebook")
                                .resizable()
                                .frame(width: 30, height: 30)
                        })
                        .frame(width: 140, height: 50)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0.0, y: 3.0)
                        
                        Button(action: {}, label: {
                            Image("google-plus")
                                .resizable()
                                .frame(width: 30, height: 30)
                        })
                        .frame(width: 140, height: 50)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0.0, y: 3.0)
                        .padding(.leading)
                    }
                    .padding(.top)
                    
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 18, weight: .medium))
                        
                        Button(action: {}, label: {
                            Text("Sign In")
                                .font(.system(size: 18, weight: .bold))
                        })
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.3489862084, green: 0.3490410447, blue: 0.3489741683, alpha: 1)))
                    .padding([.top, .bottom], 20)
                }
                .padding(20)
                .background(Color(#colorLiteral(red: 0.9646214843, green: 0.9647598863, blue: 0.9645912051, alpha: 1)))
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
