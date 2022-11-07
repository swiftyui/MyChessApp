import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import SwiftUI

class UserModel: ObservableObject {
    @Published var loggedIn: Bool = false
    @AppStorage("rememberMe") var rememberMe = false
    let database = Firestore.firestore()
    
    func login(username: String, password: String) {
        
    }
}
