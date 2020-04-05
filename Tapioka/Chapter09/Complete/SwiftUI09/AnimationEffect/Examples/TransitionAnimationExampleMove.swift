//

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
                    Text("Transition(move top)")
                }.padding()
                Spacer()
            }

            if showingSwiftUI {
                Image("big-image")
                    .transition(.move(edge: .top))
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

struct TransitionAnimationExampleMove: View {
    var body: some View {
        ContentView()
    }
}

struct TransitionAnimationExampleMove_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimationExampleMove()
    }
}
