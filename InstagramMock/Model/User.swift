//
//  User.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 15.01.24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
  
  let id: String
  var username: String
  var profileImageUrl: String?
  var fullname: String?
  var bio: String?
  let email: String

}

extension User {
  static var MOCK_USERS: [User] = [
    .init(id: UUID().uuidString, username: "__chouchoute__", profileImageUrl: "photo1", fullname: "Shushanik Barseghyan", bio: "Yow", email: "barseghyan.shushan@gmail.com"),
    .init(id: UUID().uuidString, username: "user1", bio: "user1", email: "user1@gmail.com"),
    .init(id: UUID().uuidString, username: "useruser", profileImageUrl: "photo2", fullname: "useruser", bio: "useruser", email: "useruser@gmail.com"),
    .init(id: UUID().uuidString, username: "theuser", profileImageUrl: "photo3", bio: "theuser", email: "theuser@gmail.com"),
    .init(id: UUID().uuidString, username: "lalala", profileImageUrl: "photo4", fullname: "lalala", bio: "lalala", email: "lalala@gmail.com"),
  ]
}
