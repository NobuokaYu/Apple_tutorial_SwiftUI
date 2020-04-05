import SwiftUI

fileprivate
struct ContentView: View {
    @State var showDetail = false
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.showDetail.toggle()
                }
            }) {
                Text("画像を表示").padding()
            }
            
            if showDetail {
                Image("big-image")
            }
            Text("影響を受けるすべてのビューをアニメーションします")
            Spacer()
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

struct StateAnimationExample: View {
    var body: some View {
        ContentView()
    }
}

struct StateAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        StateAnimationExample()
    }
}

