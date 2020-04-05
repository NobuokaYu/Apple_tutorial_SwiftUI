import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        Color(red:0, green: 1, blue: 1)
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

struct NoSafeAreaExample: View {
    var body: some View {
        ContentView()
    }
}

struct NoSafeAreaExample_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone SE", "iPhone 8", "iPhone 11"], id: \.self) { deviceName in
            NoSafeAreaExample().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}

