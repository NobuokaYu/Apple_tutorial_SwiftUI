import SwiftUI

struct FrameModifier: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width: 200,
               height: 100,
               alignment: .bottomLeading)
    }
}

struct FrameModifierExample: View {
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
struct FrameModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrameModifier()
            FrameModifierExample()
        }
    }
}
#endif
