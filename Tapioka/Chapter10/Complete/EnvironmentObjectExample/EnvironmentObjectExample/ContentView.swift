import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: OrderView()) {
                    Text("注文画面を開く")
                }
                NavigationLink(destination: OrderListView()) {
                    Text("注文を一覧表示する")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let order = Order()

    static var previews: some View {
        ContentView()
            .environmentObject(order)
    }
}
