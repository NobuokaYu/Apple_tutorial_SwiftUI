import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.disableAutocorrection) var envDisableAutocorrection
    @State var text = ""
    var body: some View {
        let autocorrection = envDisableAutocorrection ?? false
        return VStack {
            Text("disableAutocorrection")
            Text(autocorrection ? "True" : "False" )
            TextField("Placeholder", text: $text)
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.disableAutocorrection, true)
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentDisableAutocorrectionExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentDisableAutocorrectionExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentDisableAutocorrectionExample()
            .environment(\.disableAutocorrection, true)
        
    }
}

