import SwiftUI

fileprivate
struct ContentView: View {
    @State var mfgs = ["Kawasaki", "Honda",
                        "Yamaha", "Suzuki",
                        "Ducati", "BMW"]

    var body: some View {
        VStack {
            EditButton()

            List {
                ForEach(mfgs, id: \.self) { user in
                    Text(user)
                }.onDelete { offsets in
                    self.mfgs.remove(atOffsets: offsets)
                }
            }
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}
*/


// MARK: サンプル実行用コード

struct DeleteRowExample2: View {
    var body: some View {
        ContentView()
    }
}

struct DeleteRowExample2_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRowExample2()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

