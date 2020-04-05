import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.allowsTightening) var envAllowsTightening
    var body: some View {
        VStack {
            Text("allowsTightening")
            Text(envAllowsTightening ? "True" : "False")
            Divider()
            Text("Hello     SwiftUI!")
                .lineLimit(1)
                .frame(width:120)
                .border(Color.blue)
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.allowsTightening, true)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentAllowsTighteningExample: View {
    var body: some View {
        ContentView()
        
    }
}

struct EnvironmentAllowsTighteningExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentAllowsTighteningExample()
            .environment(\.allowsTightening, true)
    }
}

