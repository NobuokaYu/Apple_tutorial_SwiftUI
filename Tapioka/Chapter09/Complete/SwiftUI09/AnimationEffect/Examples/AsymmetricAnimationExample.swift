import SwiftUI

fileprivate
struct ContentView: View {
    @State private var showingSwiftUI = false

    var body: some View {
        
        ZStack {
            VStack {
                Toggle(isOn: $showingSwiftUI.animation()) {
                    Text("Animetion Toggle label")
                }.padding()
                Spacer()
            }

            
            VStack {
                if showingSwiftUI {
                    Text("Hello SwiftUI!")
                        .transition(
                            .asymmetric(insertion: .scale,
                                        removal: .move(edge: .trailing)))
                    Image("big-image")
                        .transition(
                            .asymmetric(insertion: .move(edge: .bottom),
                                        removal: .move(edge: .leading)))
                }
            }
        }.padding()
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct AsymmetricAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct AsymmetricAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricAnimationExample()
    }
}

