//
//  MainTabView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 09.01.24.
//

import SwiftUI

struct MainTabView: View {
  var body: some View {
    TabView {
      FeedView()
        .tabItem {
          Image(systemName: "house")
        }
      
      SearchView()
        .tabItem {
          Image(systemName: "magnifyingglass")
        }
  
      LoginVIew()
//      Text("Upload post")
        .tabItem {
          Image(systemName: "plus.square")
        }
      
      Text("Notification")
        .tabItem {
          Image(systemName: "heart")
        }
      
      CurrentUserProfileView(user: User.MOCK_USERS[0])
        .tabItem {
          Image(systemName: "person")
        }
    }
    .accentColor(.black)
    
  }
}

#Preview {
  MainTabView()
}
