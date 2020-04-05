
import SwiftUI

struct ClippedExample: View {
    var body: some View {
        VStack {
            Spacer()

            Image("face_icon_image")
                .frame(width: 100, height: 100)
                .border(Color.blue)
            
            Spacer()
            
            Image("face_icon_image")
                .frame(width: 100, height: 100)
                .border(Color.blue)
                .clipped()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ClippedExample_Previews: PreviewProvider {
    static var previews: some View {
        ClippedExample()
    }
}
#endif
