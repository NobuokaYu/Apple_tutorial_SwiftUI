import SwiftUI

fileprivate
struct ContentView: View {
    @State var showText = false
    @State var name = ""
    var susi = ["まぐろ", "サーモン", "いくら", "エビ", "穴子"]
    @State var selected = 0
    @State var birthDate = Date()

    var body: some View {
        NavigationView {
            List {
                TextField("氏名を入力してください", text: $name)
                Text("こんにちは！\(name)")

                DatePicker(selection: $birthDate,
                           label: {Text("生年月日")} )

                Picker(selection: $selected,
                       label: Text("寿司ネタを選択して下さい"))
                {
                    ForEach(0..<susi.count) {
                        Text(self.susi[$0])
                    }
                }
                Button(action: {}) {
                    Text("確定")
                }
            }
            .navigationBarTitle("寿司注文入力")
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

struct FormViewExample_List: View {
    var body: some View {
        ContentView()
    }
}

struct FormViewExample_List_Previews: PreviewProvider {
    static var previews: some View {
        FormViewExample_List()
    }
}

