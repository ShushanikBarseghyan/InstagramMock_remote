//
//  CreatePasswordView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 14.01.24.
//

import SwiftUI

struct CreatePasswordView: View {
  @State private var password: String = ""
  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack(spacing: 12) {
      Text("Create a password")
        .font(.title2)
        .fontWeight(.bold)
        .padding(.top)
      
      Text("Your password must be at least 6 characters in length")
        .font(.footnote)
        .foregroundStyle(Color.gray)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 24)
      
      SecureField("Password", text: $password)
        .autocapitalization(.none)
        .modifier(TextFieldModifier())
      
      NavigationLink {
        CompleteSignUpView()
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
    CreatePasswordView()
}
