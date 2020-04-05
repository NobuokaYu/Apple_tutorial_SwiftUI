import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        List {
            ForEach(UIFont.familyNames, id:\.self) {name in
                Text(name)
            }
        }.navigationBarTitle(Text("\(UIFont.familyNames.count) Fonts"))
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

struct FontFamilyNamesExample: View {
    var body: some View {
        ContentView()
    }
}

struct FontFamilyNamesExample_Previews: PreviewProvider {
    static var previews: some View {
        FontFamilyNamesExample()
    }
}

