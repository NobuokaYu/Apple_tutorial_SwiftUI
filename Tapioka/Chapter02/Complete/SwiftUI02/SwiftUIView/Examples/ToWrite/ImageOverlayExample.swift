
import SwiftUI

struct ImageOverlayExample: View {
    var body: some View {
        Image("big-image")
            .overlay(
                Text("SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(),
                alignment: .top)

    }
}

#if DEBUG
struct ImageOverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageOverlayExample()
    }
}
#endif
