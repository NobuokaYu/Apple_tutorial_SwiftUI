
import SwiftUI

struct ForegroundColorExample: View {
    var body: some View {
        Circle()
            .frame(width: 150,
                   height: 150)
            .foregroundColor(Color.green)

    }
}

#if DEBUG
struct ForegroundColorExample_Previews: PreviewProvider {
    static var previews: some View {
        ForegroundColorExample()
    }
}
#endif
