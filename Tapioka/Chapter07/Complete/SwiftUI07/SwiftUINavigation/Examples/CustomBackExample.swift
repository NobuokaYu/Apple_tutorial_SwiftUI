import SwiftUI

fileprivate
struct ContentView: View {
    @State var mfgs = ["Kawasaki", "Honda", "Yamaha",
                       "Suzuki", "Ducati", "BMW"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(mfgs, id: \.self) { mfg in
                    NavigationLink(destination: CustomBackView(name: mfg)) {
                        Text(mfg)
                    }
                }
            }
            .navigationBarTitle("Manufacturing")
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

struct CustomBackExample: View {
    var body: some View {
        ContentView()
    }
}

struct CustomBackExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackExample()
    }
}

