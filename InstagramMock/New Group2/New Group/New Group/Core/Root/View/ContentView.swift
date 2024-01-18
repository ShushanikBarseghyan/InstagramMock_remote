//
//  ContentView.swift
//  MainView
//
//  Created by Shushan Barseghyan on 09.01.24.
//

import SwiftUI

struct ContentView: View {
  @StateObject var contentViewModel = ContentViewModel()
  
  var body: some View {
    Group {
      if contentViewModel.userSession == nil {
        LoginView()
      } else {
        MainTabView()
      }
    }
  }
}

#Preview {
  ContentView()
}
