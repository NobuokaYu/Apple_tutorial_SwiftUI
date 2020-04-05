import SwiftUI

class Order: ObservableObject {
    @Published var items = [String]()
}
