import SwiftUI

fileprivate
struct ContentView: View {
    @State private var showingSwiftUI = false
    
    var body: some View {
        ZStack {
            VStack {
                Toggle(isOn: $showingSwiftUI
                    .animation()
                ) {
                    Text("Transition (slide)")
                }.padding()
                Spacer()
            }

            if showingSwiftUI {
                Image("big-image")
                    .transition(.slide)
            }
        }
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

struct TransitionAnimationExampleSlide: View {
    var body: some View {
        ContentView()
    }
}

struct TransitionAnimationExampleSlide_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimationExampleSlide()
    }
}


