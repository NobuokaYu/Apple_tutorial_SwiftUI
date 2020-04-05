import SwiftUI

struct OrderRowView: View {
    var order: OrderEntity
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        HStack{
            Image("tea_image")
                .resizable()
                .frame(width: 70, height: 70)
            VStack(alignment:.leading) {
                Text(order.flavorName)
                    .font(.title)
                Spacer()
                if order.nataDeCoco {
                    Text("Nata de coco")
                }
                HStack {
                    if order.iceCream != 0 {
                        Text(order.iceCreamName)
                    }
                    Spacer()
                    Text(self.dateFormatter.string(from: order.date))
                        .font(.caption)
                }
            }
            if order.favorite {
                Image(systemName: "heart.circle.fill")
                    .foregroundColor(.pink)
            } else {
                Image(systemName: "heart.circle")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OrderRowView(order: orderStore.orders[0])
            OrderRowView(order: orderStore.orders[1])
            OrderRowView(order: orderStore.orders[2])
        }
        .previewDevice("iPhone SE")
        .previewLayout(.fixed(width: 400,
                              height: 80))
    }
}
