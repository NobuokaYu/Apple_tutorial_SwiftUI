import SwiftUI

struct FrameExample : View {
    var body: some View {
        Text("Hello SwiftUI!")
            .border(Color.red)
            .frame(width: 200,
                   height: 100,
                   alignment: .bottomLeading)
            .border(Color.blue)
    }
}

#if DEBUG
struct SwiftUIView_Previews : PreviewProvider {
    static var previews: some View {
        FrameExample()
    }
}
#endif
