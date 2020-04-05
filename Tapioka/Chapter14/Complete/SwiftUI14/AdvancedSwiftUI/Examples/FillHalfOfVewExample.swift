import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Text("Left")
                    .frame(maxWidth:.infinity,
                           minHeight: 50)
                    .background(Color.yellow)
                Text("Right Side")
                    .frame(maxWidth:.infinity,
                           minHeight: 50)
                    .background(Color.orange)
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 400, height: 80))
    }
}
*/


// MARK: サンプル実行用コード

struct FillHalfOfVewExample: View {
    var body: some View {
        ContentView()
    }
}

struct FillHalfOfVewExample_Previews: PreviewProvider {
    static var previews: some View {
        FillHalfOfVewExample()
            .previewLayout(.fixed(width: 400, height: 80))
    }
}

