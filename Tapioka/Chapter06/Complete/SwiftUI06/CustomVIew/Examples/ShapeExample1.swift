import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous)
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            RoundedRectangle(cornerSize: .init(width: 20, height: 40))
                .fill(Color.green)
                .frame(width: 200, height: 100)
            
            Capsule(style: .circular)
                .fill(Color.blue)
                .frame(width: 200, height: 50)
            
            Circle()
                .fill(Color.black)
                .frame(width: 200, height: 100)

            Ellipse()
                .fill(Color.pink)
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

struct ShapeExample1: View {
    var body: some View {
        ContentView()
    }
}

struct ShapeExample1_Previews: PreviewProvider {
    static var previews: some View {
        ShapeExample1()
    }
}

