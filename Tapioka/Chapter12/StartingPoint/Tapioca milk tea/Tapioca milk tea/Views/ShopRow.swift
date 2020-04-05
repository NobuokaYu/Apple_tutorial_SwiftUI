import SwiftUI

struct ShopCell: View {
    var shop: Shop
    var body: some View {
        VStack(alignment: .center) {
            shop.image
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 155, height: 155)
                .clipShape(Circle())
            Text(shop.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct ShopRow: View {
    var shops: [Shop]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Shop")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.shops) { shop in
                        NavigationLink(destination: ShopView(shop: shop)) {
                            ShopCell(shop: shop)
                        }
                    }
                }
            }
        }
    }
}

struct ShopRow_Previews: PreviewProvider {
    static var previews: some View {
        ShopRow(shops: dataStore.shops)
    }
}
