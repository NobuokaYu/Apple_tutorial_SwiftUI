import SwiftUI

struct OrderListView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        List{
            ForEach(order.items, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {

    static var order : Order {
        let order=Order()
        order.items = ["トースト＆ゆで卵",
                       "トースト＆スクランブル",
                       "シナモントースト"]
        return order
    }
    
    static var previews: some View {
        OrderListView()
            .environmentObject(order)
    }
}
