import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Button(action: {}) {
               Text("Tap!!")
                   .font(.footnote)
                   .fontWeight(.thin)
                   .foregroundColor(Color.black)
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

struct ContentView6: View {
    var body: some View {
        ContentView()
    }
}

struct ContentView6_Previews: PreviewProvider {
    static var previews: some View {
        ContentView6()
    }
}

