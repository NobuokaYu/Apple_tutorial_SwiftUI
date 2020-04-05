import SwiftUI

struct PaddingIViewExample : View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .padding()
                .border(Color.black)

            Text("Hello SwiftUI!")
                .border(Color.black)
                        Spacer()

            Text("Hello SwiftUI!")
                .padding(.bottom)
                .border(Color.black)

            Text("Hello SwiftUI!")
                .padding(50)
                .border(Color.black)
            Spacer()
            Text("Hello SwiftUI!")
                .padding(.bottom, 50)
                .border(Color.black)
            Spacer()
        }
    }
}

#if DEBUG
struct PaddingIViewExample_Previews : PreviewProvider {
    static var previews: some View {
        PaddingIViewExample()
    }
}
#endif
