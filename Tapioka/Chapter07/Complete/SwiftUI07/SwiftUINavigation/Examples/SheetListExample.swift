import SwiftUI

fileprivate
struct ContentView: View {
    @State var mfgs = ["Kawasaki", "Honda", "Yamaha",
                       "Suzuki", "Ducati", "BMW"]
    @State var showingDetail = false
    
    var body: some View {
        List {
            Text("Manufacturing").font(.system(size: 30))
            ForEach(mfgs, id: \.self) { mfg in
                Button(action: { self.showingDetail.toggle() }) {
                    Text(mfg)
                }.sheet(isPresented: self.$showingDetail) {
                    DetailView(name: mfg)
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

struct SheetListExample: View {
    var body: some View {
        ContentView()
    }
}

struct SheetListExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetListExample()
    }
}

