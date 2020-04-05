import SwiftUI

struct OrderDetail: View {
    var order: OrderEntity
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
                } else {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
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
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OrderDetail(order: orderStore.orders[0])
            OrderDetail(order: orderStore.orders[1])
        }
    }
}
