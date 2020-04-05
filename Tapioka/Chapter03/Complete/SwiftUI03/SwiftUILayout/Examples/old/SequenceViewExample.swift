import SwiftUI

struct SequenceViewExample : View {
    var body: some View {
        VStack(spacing:30) {
            Text("Hello SwiftUI!")
                .padding()
                .background(Color.purple)
                .border(Color.blue)
            Text("Hello SwiftUI!")
                .background(Color.purple)
                .padding()
                .border(Color.blue)
        }
    }
}

#if DEBUG
struct SequenceViewExample_Previews : PreviewProvider {
    static var previews: some View {
        SequenceViewExample()
    }
}
#endif
