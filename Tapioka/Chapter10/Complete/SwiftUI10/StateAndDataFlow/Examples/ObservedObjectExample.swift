import SwiftUI

fileprivate
class MyData: ObservableObject {
    @Published var score = 0
}

fileprivate
struct ContentView: View {
    
    @ObservedObject var data:MyData
    
    var body: some View {
        VStack {
            Text("\(data.score)")
            
            Button(action: {
                self.data.score += 1
            }) {
                Text("カウントアップ")
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

struct ObservedObjectExample: View {
    var body: some View {
        ContentView(data: MyData())
    }
}

struct ObservedObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectExample()
    }
}

