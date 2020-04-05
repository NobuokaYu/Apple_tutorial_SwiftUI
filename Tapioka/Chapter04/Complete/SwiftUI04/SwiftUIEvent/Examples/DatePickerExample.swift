import SwiftUI

fileprivate
struct ContentView: View {
    @State var birthDate = Date()
    var body: some View {
        VStack {
            DatePicker(
                selection: $birthDate,
                displayedComponents: [.date],
                label: {Text("生年月日")} )
            Text("\(birthDate)")
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}
*/


// MARK: サンプル実行用コード

struct DatePickerExample: View {
    var body: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}

