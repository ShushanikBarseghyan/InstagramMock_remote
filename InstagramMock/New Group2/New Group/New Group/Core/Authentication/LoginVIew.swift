//
//  LoginVIew.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 11.01.24.
//

import SwiftUI

struct LoginVIew: View {
  
  @State private var email: String = ""
  @State private var password: String = ""
  
  var body: some View {
    NavigationStack {
      VStack {
        Spacer()
        
        Image("instagram_logo")
          .resizable()
          .scaledToFit()
          .frame(width: 220, height: 100)
        
        VStack {
          TextField("Enter your email", text: $email)
            .autocapitalization(.none)
            .modifier(TextFieldModifier())
          
          SecureField("Enter your password", text: $password)
            .modifier(TextFieldModifier())
        }
        
        Button {
          print("Show forgot password")
        } label: {
          Text("Forgot Password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.top)
            .padding(.trailing, 28)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        
        Button {
          print("Login")
        } label: {
          Text("Login")
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 44)
            .foregroundStyle(Color.white)
            .background(Color(.systemBlue))
            .cornerRadius(10)
        }
        .padding(.vertical)
        
        HStack {
          Rectangle()
            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
          Text("OR")
            .font(.footnote)
            .fontWeight(.semibold)
          Rectangle()
            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
        }
        .foregroundStyle(Color.gray)
        
        
        HStack {
          Image("facebookLogo")
            .resizable()
            .frame(width: 20, height: 20)
          
          Text("Continue with Facebook")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.systemBlue))
        }
        .padding(.top, 8)
        
        Spacer()
        
        Divider()
        
        NavigationLink {
          AddEmailView()
            .navigationBarBackButtonHidden(true)
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account?")
            Text("Sign Up")
              .fontWeight(.semibold)
          }
          .font(.footnote)
          .foregroundStyle(Color(.systemBlue))
        }
        .padding(.vertical, 16)
      }
    }
  }
}

#Preview {
  LoginVIew()
}
