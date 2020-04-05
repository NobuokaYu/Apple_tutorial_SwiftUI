import SwiftUI

struct AlertError: Identifiable, CustomStringConvertible {
    var description: String{
        "title: \(title) \nmessage: \(message) \nok: \(ok)"
    }
    
    var id = UUID()
    let title:String
    let message:String
    let ok:String
}
