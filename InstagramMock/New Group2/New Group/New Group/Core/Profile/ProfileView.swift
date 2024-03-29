//
//  ProfileView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 09.01.24.
//

import SwiftUI

struct ProfileView: View {
  
  let user: User

  var posts: [Post] {
    return Post.MOCK_POSTS.filter{ $0.user?.username == user.username}
  }
  
  var body: some View {
    ScrollView {
      ProfileHeaderView(user: user)
      
      PostGridView(posts: posts)
    }
    .navigationTitle("Profile")
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  ProfileView(user: User.MOCK_USERS[0])
}
