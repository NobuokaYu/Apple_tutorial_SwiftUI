
import SwiftUI

// The relativeWidth(_:), relativeHeight(_:), and relativeSize(width:height:) modifiers are deprecate
struct RelativeSizeExample: View {
    var body: some View {
        Color.pink
            .relativeSize(width: 0.75, height: 0.75)
            .frame(width: 200, height: 100)
            .border(Color.blue)

    }
}

#if DEBUG
struct RelativeSizeExample_Previews: PreviewProvider {
    static var previews: some View {
        RelativeSizeExample()
    }
}
#endif
