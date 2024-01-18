//
//  AddEmailView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 11.01.24.
//

import SwiftUI

struct AddEmailView: View {
  
  @State private var email: String = ""
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack(spacing: 12) {
      Text("Add your email")
        .font(.title2)
        .fontWeight(.bold)
        .padding(.top)
      
      Text("You will use this email to sign in into your account")
        .font(.footnote)
        .foregroundStyle(Color.gray)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 24)
      
      TextField("Email", text: $email)
        .autocapitalization(.none)
        .modifier(TextFieldModifier())
      
      
      NavigationLink {
        CreateUsernameView()
          .navigationBarBackButtonHidden()
      } label: {
        Text("Next")
          .font(.subheadline)
          .fontWeight(.semibold)
          .frame(width: 360, height: 44)
          .foregroundStyle(Color.white)
          .background(Color(.systemBlue))
          .cornerRadius(10)
      }
      .padding(.vertical)
      
      Spacer()
    }
    .toolbar {
      ToolbarItem(placement: .topBarLeading) {
        Image(systemName: "chevron.left")
          .imageScale(.large)
          .onTapGesture {
            dismiss()
          }
      }
    }
  }
  
}

#Preview {
  AddEmailView()
}
