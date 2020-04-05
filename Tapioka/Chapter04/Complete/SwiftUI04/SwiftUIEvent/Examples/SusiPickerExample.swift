import SwiftUI

fileprivate
struct ContentView: View {
    var susi = ["まぐろ","サーモン","いくら","エビ","穴子"]
    @State var selected = 0

    var body: some View {
        VStack {
            Picker(selection: $selected,
                   label: Text("寿司ネタを選択して下さい"))
            {
                ForEach(0..<susi.count) {
                    Text(self.susi[$0])
                }
            }
            Text("あなたの寿司 : \(susi[selected])")          
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

struct SusiPickerExample: View {
    var body: some View {
        ContentView()
    }
}

struct SusiPickerExample_Previews: PreviewProvider {
    static var previews: some View {
        SusiPickerExample()
    }
}

