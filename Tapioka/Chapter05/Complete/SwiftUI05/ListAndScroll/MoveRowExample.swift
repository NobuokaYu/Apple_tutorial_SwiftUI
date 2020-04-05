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
                }.onMove { source, destination in
                    self.mfgs.move(fromOffsets: source,
                                   toOffset: destination)
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

struct MoveRowExample: View {
    var body: some View {
        ContentView()
    }
}

struct MoveRowExample_Previews: PreviewProvider {
    static var previews: some View {
        MoveRowExample()
    }
}

