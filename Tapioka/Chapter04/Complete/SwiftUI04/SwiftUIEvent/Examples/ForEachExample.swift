import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack{
            ForEach(0...4, id: \.self){ index in
                Text("\(index)")
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

struct ForEachExample: View {
    var body: some View {
        ContentView()
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}

