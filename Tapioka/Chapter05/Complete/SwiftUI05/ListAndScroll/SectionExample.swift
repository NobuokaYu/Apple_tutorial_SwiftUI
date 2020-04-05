import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Japan")) {
                Text("Kawasaki")
                Text("Suzuki")
            }
            Section(header: Text("Italy")) {
                Text("Ducati")
            }
            Section(header: Text("Germany"),
                    footer: Text("End of list")) {
                Text("BMW")
                Text("DKW")
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

struct SectionExample: View {
    var body: some View {
        ContentView()
    }
}

struct SectionExample_Previews: PreviewProvider {
    static var previews: some View {
        SectionExample()
    }
}

