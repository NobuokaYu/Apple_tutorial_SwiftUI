import SwiftUI

struct ClickFrameModifier: ViewModifier {
    @State var hasBackground = false

    func body(content: Content) -> some View {
        ZStack(alignment: .topLeading) {
            if hasBackground {
                content.clipShape(
                    RoundedRectangle(cornerRadius: 40)
                )
            } else {
                content.clipShape(Ellipse())
            }
            Button(action: {
                self.hasBackground.toggle()
            }) {
                Text("フレーム変更")
                    .background(
                        Capsule()
                            .fill(Color.yellow)
                    )
            }
        }
    }
}

extension View {
    func clickFrame() -> some View {
        self.modifier(ClickFrameModifier())
    }
}


fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Image("big-image")
                .clickFrame()
            
            Text("Hello SwiftUI!")
            .padding()
                .background(Color.red)
                .clickFrame()
        }
    }
}
// MARK: サンプル実行用コード

struct ClickViewModifierExample: View {
    var body: some View {
        ContentView()
    }
}

struct ClickViewModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        ClickViewModifierExample()
    }
}
