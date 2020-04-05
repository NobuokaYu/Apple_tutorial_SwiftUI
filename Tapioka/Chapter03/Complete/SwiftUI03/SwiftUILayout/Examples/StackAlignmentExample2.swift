import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing:20) {
            VStack {
                Text("Hello World!")
                Text("SwiftUI!")
            }.background(Color.red)
            HStack(alignment: .bottom) {
                Text("Hello World!")
                Text("SwiftUI!").font(.largeTitle)
            }.background(Color.blue)
            Text("SwiftUI!")
                .background(Color.green)
        }
        .frame(width:250,height:150)
        .background(Color.yellow)
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

struct StackAlignmentExample2: View {
    var body: some View {
        ContentView()
    }
}

struct StackAlignmentExample2_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignmentExample2()
    }
}

