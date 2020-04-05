import SwiftUI

fileprivate
struct ContentView: View {
    @State var birthDate = Date()
    var body: some View {
        VStack {
            DatePicker(
                selection: $birthDate,
                displayedComponents: [.date,
                                      .hourAndMinute],
                       label: {Text("日、時刻")} )
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

struct DateTimePickerExample: View {
    var body: some View {
        ContentView()
    }
}

struct DateTimePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DateTimePickerExample()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

