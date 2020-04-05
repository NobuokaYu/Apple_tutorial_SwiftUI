import SwiftUI

fileprivate
struct ContentView: View {
    @State var birthDate = Date()
    var body: some View {
        VStack {
            DatePicker(
                selection: $birthDate,
                displayedComponents: [.hourAndMinute],
                label: {Text("時刻")} )
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

struct TimePickerExample: View {
    var body: some View {
        ContentView()
    }
}

struct TimePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerExample()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

