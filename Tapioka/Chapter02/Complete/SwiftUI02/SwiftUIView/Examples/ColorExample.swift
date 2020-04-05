import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack{
            Text("SwiftUI").font(.largeTitle).foregroundColor(.primary)
            Text("より優れたAppを、より少ないコードで。").foregroundColor(.secondary)
        }

        .navigationBarTitle(Text(""))
        .navigationBarHidden(true)

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

struct ColorExample: View {
    var body: some View {
        ContentView()
    }
}

struct ColorExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {ColorExample()}
            NavigationView {ColorExample()}
                .environment(\.colorScheme, .dark)
        }
        .previewDevice("iPhone SE")
        .previewLayout(.fixed(width: 400,
                              height: 200))

    }
}

