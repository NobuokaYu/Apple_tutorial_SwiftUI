import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            Rectangle()
                .stroke(lineWidth: 3)
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            Rectangle()
                .stroke(style: StrokeStyle(
                    lineWidth: 5,
                    dash: [10,5,5,5]))
                .fill(Color.red)
                .frame(width: 200, height: 100)


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

struct ShapeExample: View {
    var body: some View {
        ContentView()
    }
}

struct ShapeExample_Previews: PreviewProvider {
    static var previews: some View {
        ShapeExample()
    }
}

