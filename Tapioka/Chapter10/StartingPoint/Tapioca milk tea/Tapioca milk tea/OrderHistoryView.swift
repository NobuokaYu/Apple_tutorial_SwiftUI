import SwiftUI

struct OrderHistoryView: View {
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                .padding(EdgeInsets(top: 0, leading: 20,
                                    bottom: 0, trailing: 20))
                
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
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}
