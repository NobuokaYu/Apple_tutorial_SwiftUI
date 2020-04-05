//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var showText = false
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    withAnimation {
                        self.showText.toggle()
                    }
                }) {
                    Text("アニメーション").padding()
                }.padding()
                Spacer()
            }
            VStack {
                if showText{
                    Text("Hello SwiftUI!").padding()
                        .transition(AnyTransition
                            .opacity
                            .combined(with: .slide))
                    
                    Text("Hello SwiftUI!").padding()
                        .transition(AnyTransition
                            .move(edge: .leading)
                            .combined(with: .move(edge: .bottom)))
                    
                    Text("Hello SwiftUI!").padding()
                        .transition(AnyTransition
                            .scale
                            .combined(with: .slide))
                }
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

struct CombinedAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct CombinedAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        CombinedAnimationExample()
    }
}


