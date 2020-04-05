import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!").bold()
            Text("Hello, World!").italic()
            Text("Hello, World!").fontWeight(.black)
            Text("Hello, World!").baselineOffset(15)
            Text("Hello, World!").kerning(10)
            Text("Hello, World!").underline()
            Text("Hello, World!").strikethrough()
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

struct TextAppearanceExample: View {
    var body: some View {
        ContentView()
    }
}

struct TextAppearanceExample_Previews: PreviewProvider {
    static var previews: some View {
        TextAppearanceExample()
            //.previewLayout(.fixed(width: 1000, height: 50))
    }
}

