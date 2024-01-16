//
//  CurrentUserProfileView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 15.01.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
  
  let user: User
  var posts: [Post] {
    return Post.MOCK_POSTS.filter{ $0.user?.username == user.username}
  }
  
  var body: some View {
    NavigationStack {
      ScrollView {
        ProfileHeaderView(user: user)
        PostGridView(posts: posts)
        
      }
      .navigationTitle("Profile")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            
          } label: {
            Image(systemName: "line.3.horizontal")
              .foregroundColor(.black)
          }
        }
      }
    }
  }
}



#Preview {
  CurrentUserProfileView(user: User.MOCK_USERS[0])
}
