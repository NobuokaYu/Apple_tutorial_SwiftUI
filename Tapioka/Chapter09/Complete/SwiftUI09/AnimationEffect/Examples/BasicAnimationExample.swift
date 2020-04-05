//

import SwiftUI

fileprivate
struct ContentView: View {
    
    @State var scale:CGFloat = 1
    
    var body: some View {
        VStack {
            Stepper(value: $scale, in: 1...5) {
                Text("Scale \(scale)")
            }
            Spacer().frame(height:100)
            Text("default")
                .scaleEffect(scale)
                .animation(.default)
            
            Text("linear(duration: 1)")
                .scaleEffect(scale)
                .animation(.linear(duration: 1))
            
            
            Text("easeIn")
                .scaleEffect(scale)
                .animation(.easeIn)
            

            Text("easeOut")
                .scaleEffect(scale)
                .animation(.easeOut)
            
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

struct BasicAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct BasicAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        BasicAnimationExample()
    }
}

