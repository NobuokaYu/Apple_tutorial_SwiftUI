import SwiftUI

struct OrderHistoryView: View {
    @State var showFavoritesOnly = false
    @State var showDeleteActionSheet = false
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \OrderEntity.date,
                                           ascending: false)],
        animation: .default)
    var orders: FetchedResults<OrderEntity>

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                
                ForEach(orders) { order in
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
                            self.orders.forEach {
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

struct OrderHistoryView_Previews : PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
        return OrderHistoryView()
            .environment(\.managedObjectContext, context)
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

