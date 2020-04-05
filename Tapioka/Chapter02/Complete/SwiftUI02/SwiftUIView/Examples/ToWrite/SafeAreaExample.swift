
import SwiftUI

extension Color {
    static let cyan = Color(red: 0, green: 1, blue: 1)
}

struct SafeAreaExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity)
            .background(Color.cyan)

    }
}

#if DEBUG
struct SafeAreaExample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaExample()
    }
}
#endif
