import SwiftUI

fileprivate
struct ContentView: View {
    @State var selectDate = Date()
    var from: Date {
           let format = DateFormatter()
           format.dateFormat = "yyyy-MM-dd"
           return format.date(from: "2019-05-01")!
       }
    var body: some View {
        VStack {
            DatePicker(
                selection: $selectDate,
                in: from...Date(),
                displayedComponents: [.date]) {
                    Text("令和")
                }
            Text("\(selectDate)")
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

struct DatePickerExample2: View {
    var body: some View {
        ContentView()
    }
}

struct DatePickerExample2_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample2()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

