//
//  CompleteSignUpView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 14.01.24.
//

import SwiftUI

struct CompleteSignUpView: View {
  @State private var password: String = ""
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack(spacing: 12) {
      Spacer()
      
      Text("Welcome to Instagram, __chouchoute__!!!!!")
        .font(.title2)
        .fontWeight(.bold)
        .padding(.top)
        .multilineTextAlignment(.center)
      
      Text("Click below to complete regiistration and start using Instagram")
        .font(.footnote)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 24)
      
      
      Button {
        print("complete sign up")
      } label: {
        Text("Complete sign up")
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
  CompleteSignUpView()
}
