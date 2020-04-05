import SwiftUI

extension Color {
    static let cyan = Color(red: 0, green: 1, blue: 1)
}

struct EdgesIgnoringSafeAreaExample : View {
    var edges:Edge.Set
    
    var body: some View {
        Group{
            if edges.isEmpty {
                Text("Hello SwiftUI!")
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity)
                    .background(Color.cyan)
            } else {
                Text("Hello SwiftUI!")
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity)
                    .background(Color.cyan)
                    .edgesIgnoringSafeArea(edges)
            }
        }
    }
}

#if DEBUG
struct EdgesIgnoringSafeAreaExample_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            EdgesIgnoringSafeAreaExample(edges:Edge.Set())
            EdgesIgnoringSafeAreaExample(edges: .init(arrayLiteral: .bottom,.top))
        }
    }
}
#endif
