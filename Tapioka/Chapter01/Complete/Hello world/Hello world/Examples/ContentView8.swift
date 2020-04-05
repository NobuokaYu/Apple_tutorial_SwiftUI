import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        get {
            return VStack(spacing: 80) {
                Text("Hello SwiftUI")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                Button(action: {}) {
                    Text("Tap!!")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color.black)
                        .frame(width: 70, height: 20)
                        .border(Color.gray)
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

struct ContentView8: View {
    var body: some View {
        ContentView()
    }
}

struct ContentView8_Previews: PreviewProvider {
    static var previews: some View {
        ContentView8()
    }
}

