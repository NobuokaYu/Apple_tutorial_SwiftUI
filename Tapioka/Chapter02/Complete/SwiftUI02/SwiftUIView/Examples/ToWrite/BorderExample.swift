
import SwiftUI

struct BorderExample: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .frame(width: 100, height: 100)
            .border(Color.blue, width: 1)
    }
}

#if DEBUG
struct BorderExample_Previews: PreviewProvider {
    static var previews: some View {
        BorderExample()
    }
}
#endif
