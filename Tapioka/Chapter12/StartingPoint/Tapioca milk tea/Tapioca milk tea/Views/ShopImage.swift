import SwiftUI

fileprivate let gradient = Gradient(colors: [
    .white,
    Color.init(red: 0.9, green: 0.9, blue: 0.9)
])

fileprivate let linear = LinearGradient(
    gradient: gradient,
    startPoint: .top,
    endPoint: .bottom
)

struct ShopImage: View {
    let image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(linear, lineWidth: 13))
            .shadow(radius: 5, x: 0, y: 5)
    }
}

struct ShopImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(dataStore.shops) { shop in
                ShopImage(image:shop.image)
            }
        }
        .previewLayout(.fixed(width: 300, height: 300))
    }
}
