import SwiftUI

fileprivate
struct ContentView: View {
    @State var mfgs = ["Kawasaki", "Honda",
                        "Yamaha", "Suzuki",
                        "Ducati", "BMW"]

    var body: some View {
        List {
            ForEach(mfgs, id: \.self) { user in
                Text(user)
            }.onDelete { offsets in
                self.mfgs.remove(atOffsets: offsets)
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

struct DeleteRowExample: View {
    var body: some View {
        ContentView()
    }
}

struct DeleteRowExample_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRowExample()
    }
}

