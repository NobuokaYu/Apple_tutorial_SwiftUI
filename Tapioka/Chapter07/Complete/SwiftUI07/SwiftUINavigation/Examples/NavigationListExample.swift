import SwiftUI

fileprivate
struct ContentView: View {

    @State var mfgs = ["Kawasaki", "Honda", "Yamaha",
                       "Suzuki", "Ducati", "BMW"]

    var body: some View {
        NavigationView {
            List {
                ForEach(mfgs, id: \.self) { mfg in
                    NavigationLink(destination: DetailView(name: mfg)) {
                        Text(mfg)
                    }
                }
            }.navigationBarTitle("Manufacturing")
            //.navigationBarHidden(true)
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

struct NavigationListExample: View {
    var body: some View {
        ContentView()
    }
}

struct NavigationListExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListExample()
    }
}

