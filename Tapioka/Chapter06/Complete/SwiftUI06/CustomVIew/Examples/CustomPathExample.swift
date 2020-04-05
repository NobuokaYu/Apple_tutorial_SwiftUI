import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            RotateEllipse()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            RotateEllipse()
                .stroke(style: .init(lineWidth: 1))
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            RotateEllipse(rotations: 50)
                .stroke(style: .init(lineWidth: 1))
                .fill(Color.blue)
                .frame(width: 300, height: 300)
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

struct CustomPathExample: View {
    var body: some View {
        ContentView()
    }
}

struct CustomPathExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomPathExample()
    }
}

