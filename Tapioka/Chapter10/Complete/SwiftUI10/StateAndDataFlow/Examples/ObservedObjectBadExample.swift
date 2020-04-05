import SwiftUI

fileprivate
class MyData {
    var score:Int
    init(score:Int){
        self.score = score
    }
}


fileprivate
struct ContentView: View {
    @State var setting:MyData = MyData(score: 0)
    
    var body: some View {
        VStack {
            Text("\(setting.score)")
            
            Button(action: {
                //self.setting = MyData(score: self.setting.score + 1)
                self.setting.score = self.setting.score + 1
            }) {
                Text("Count up")
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

struct ObservedObjectBadExample: View {
    var body: some View {
        ContentView()
    }
}

struct ObservedObjectBadExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectBadExample()
    }
}

