import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.calendar) var envCalendar
    @Environment(\.locale) var envLocale
    
    var format: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        dateFormatter.calendar = envCalendar
        dateFormatter.locale = envLocale
        return dateFormatter
    }

    var body: some View {
        VStack {
            Text("calendar \(envCalendar.description)")
            Text("locale \(envLocale.description)")
            Text(format.string(from: Date()))
            //Text("\(envLocale.languageCode ?? "nil")")
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.calendar, Calendar(identifier: .japanese))
            .environment(\.locale, Locale(identifier: "ja_JP"))

    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentCalendarAndLocaleExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentCalendarAndLocaleExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentCalendarAndLocaleExample()
            .environment(\.calendar, Calendar(identifier: .japanese))
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}

