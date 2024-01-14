//
//  UserStatView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 09.01.24.
//

import SwiftUI

struct UserStatView: View {
  let value: Int
  let title: String
  
    var body: some View {
      VStack {
        Text("\(value)")
          .font(.subheadline)
          .fontWeight(.semibold)
        Text(title)
          .font(.footnote)
      }
      .frame(width: 76)    }
}

#Preview {
  UserStatView(value: 3, title: "Posts")
}
