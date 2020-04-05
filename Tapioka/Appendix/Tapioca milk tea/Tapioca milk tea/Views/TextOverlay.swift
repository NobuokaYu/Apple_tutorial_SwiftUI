import SwiftUI

struct TextOverlay: View {
    var special: Special
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.7),
                         Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(special.caption)
                    .font(.title)
                    .bold()
                Text(special.text)
            }.padding()
        }.foregroundColor(.white)
    }

}

struct TextOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlay(special: dataStore.specials[0])
            .previewLayout(.fixed(width: 400,
                                  height: 200))
    }
}
