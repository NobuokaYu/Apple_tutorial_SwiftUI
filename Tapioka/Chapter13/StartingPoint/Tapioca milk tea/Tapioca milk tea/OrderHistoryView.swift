import SwiftUI

struct OrderHistoryView: View {
    @State var showFavoritesOnly = false
    @State var showDeleteActionSheet = false
    @EnvironmentObject var orderStore: OrderStore

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                .padding(EdgeInsets(top: 0,
                                    leading: 20,
                                    bottom: 0,
                                    trailing: 20))
                
                ForEach(orderStore.orders) { order in
                    if !self.showFavoritesOnly || order.favorite {
                        NavigationLink(
                            destination: OrderDetail(order: order)
                        ){
                            OrderRowView(order:order)
                        }
                    }
                }
            }
            .navigationBarTitle("Order list")
            .navigationBarItems(trailing:
                Button(action: {
                    self.showDeleteActionSheet = true
                }) {
                    Text("Favorites")
                }.actionSheet(isPresented: $showDeleteActionSheet) {
                    ActionSheet(title: Text("Message"),
                    message: Text("Make All Favorites"),
                    buttons: [
                        .destructive(Text("Favorites")){
                            self.orderStore.orders.forEach {
                                $0.favorite = true
                            }
                        },
                        .cancel(Text("Cancel")),
                    ])
                }
            )
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var orderStore: OrderStore {
        let orderStore = OrderStore()
        orderStore.orders.append(OrderEntityOLD())
        return orderStore
    }

    static var previews: some View {
        OrderHistoryView()
            .environmentObject(orderStore)
    }
}
