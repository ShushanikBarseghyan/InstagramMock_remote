//
//  CreateUsernameView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 14.01.24.
//

import SwiftUI

struct CreateUsernameView: View {
  
  @State private var username: String = ""
  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack(spacing: 12) {
      Text("Create a username")
        .font(.title2)
        .fontWeight(.bold)
        .padding(.top)
      
      Text("You will use this username to sign in into your account")
        .font(.footnote)
        .foregroundStyle(Color.gray)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 24)
      
      TextField("Username", text: $username)
        .autocapitalization(.none)
        .modifier(TextFieldModifier())
      
      
      NavigationLink {
        CreatePasswordView()
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
  CreateUsernameView()
}
