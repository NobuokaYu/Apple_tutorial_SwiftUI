import SwiftUI

struct OrderHistoryView: View {
    var body: some View {
        List {
            ForEach(orderStore.orders) { order in
                OrderRowView(order: order)
            }
        }
    }
}

struct OrderHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHistoryView()
    }
}
