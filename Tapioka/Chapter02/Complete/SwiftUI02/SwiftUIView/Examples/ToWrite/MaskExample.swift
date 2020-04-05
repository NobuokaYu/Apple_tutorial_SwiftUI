

import SwiftUI

struct MaskExample: View {
    var body: some View {
        VStack {
            Image("sakura_image")
            Image("hacking_to_the_swift")
            Image("sakura_image")
            .mask(Image("hacking_to_the_swift"))
            Image("sakura_image")
            .mask(Color(red: 0.0,
                        green: 0.0,
                        blue: 0.0,
                        opacity: 0.3))

        }
    }
}

#if DEBUG
struct MaskExample_Previews: PreviewProvider {
    static var previews: some View {
        MaskExample()
    }
}
#endif
