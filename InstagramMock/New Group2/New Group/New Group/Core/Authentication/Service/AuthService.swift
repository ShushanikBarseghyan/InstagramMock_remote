//
//  AuthService.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 19.01.24.
//

import Foundation
import FirebaseAuth

class AuthService {
  
  @Published var userSession: FirebaseAuth.User?
  
  static let shared = AuthService()
  
  init() {
    self.userSession = Auth.auth().currentUser
  }
  //checks to see if there's a user logged in to the app from the device

  func login(withEmail email: String, password: String) async throws {
    
  }
  
  func createUser(email: String, password: String, username: String) async throws {
    
  }
  
  func loadUserData() async throws {
    
  }
  
  func signout() {
    
  }
  
}
