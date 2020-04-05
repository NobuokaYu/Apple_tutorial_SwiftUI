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
            Stepper(value: $data.score, in: 0...100) {
                Text("値の変更")
            }.fixedSize()

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

struct ObservedObjectBindingExample: View {
    var body: some View {
        ContentView(data: MyData())
    }
}

struct ObservedObjectBindingExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectBindingExample()
    }
}

