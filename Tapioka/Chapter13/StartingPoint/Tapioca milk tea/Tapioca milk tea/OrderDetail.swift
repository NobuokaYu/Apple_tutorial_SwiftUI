import SwiftUI

struct OrderDetail: View {
    @ObservedObject var order: OrderEntityOLD
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Favorite")
                if order.favorite {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                        .onTapGesture {
                            self.order.favorite = false
                        }
                } else {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .onTapGesture {
                            self.order.favorite = true
                        }
                }
            }.padding()
            
            TapiocaTeaView(iceCream: Int(order.iceCream),
                           flavor: Int(order.flavor),
                           nataDeCoco: order.nataDeCoco)
            
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco {
                Text("Nata de coco")
            }
            if order.iceCream != 0 {
                Text(order.iceCreamName)
            }
            Text(order.other)

            Text("\(order.date,formatter: dateFormatter)")
                .font(.caption)
        }
        .navigationBarTitle("Order detail")
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var orderStore: OrderStore {
        let orderStore = OrderStore()
        orderStore.orders.append(OrderEntityOLD())
        return orderStore
    }

    static var previews: some View {
        OrderDetail(order: orderStore.orders[0])
    }
}
