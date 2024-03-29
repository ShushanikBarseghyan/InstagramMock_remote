//
//  TextFieldModifier.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 14.01.24.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .padding(12)
      .background(Color(.systemGray6))
      .cornerRadius(10)
      .padding(.horizontal, 24)
  }
  
}
