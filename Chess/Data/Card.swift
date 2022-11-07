import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var title : String
    var description : String
}

var testData:[Card] = [
    
    Card(title: "Create an account",
         description: "Create an account and join thousands of players! Play Chess with friends and see who is the true King"),
    
    Card(title: "Account ",
         description: "Request a ride get picked up by a nearby community driver"),

]
