import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        CurveShape()
            .stroke(style: .init(lineWidth: 4))
            .foregroundColor(.red)
            .frame(width:300,height:300)
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

struct CurveExample: View {
    var body: some View {
        ContentView()
    }
}

struct CurveExample_Previews: PreviewProvider {
    static var previews: some View {
        CurveExample()
    }
}

