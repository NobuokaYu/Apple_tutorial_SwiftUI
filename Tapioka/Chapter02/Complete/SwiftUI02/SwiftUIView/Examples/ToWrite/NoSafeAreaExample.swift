
import SwiftUI

struct NoSafeAreaExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .background(Color.cyan)
            .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct NoSafeAreaExample_Previews: PreviewProvider {
    static var previews: some View {
        NoSafeAreaExample()
    }
}
#endif
