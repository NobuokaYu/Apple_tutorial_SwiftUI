import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.allowsTightening) var allowsTightening
    @Environment(\.calendar) var calendar
    @Environment(\.locale) var locale
    @Environment(\.pixelLength) var pixelLength
    @Environment(\.colorSchemeContrast) var colorSchemeContrast
    @Environment(\.defaultMinListHeaderHeight) var defaultMinListHeaderHeight
    @Environment(\.defaultMinListRowHeight) var defaultMinListRowHeight
    @Environment(\.disableAutocorrection) var disableAutocorrection
    @Environment(\.displayScale) var displayScale
    @Environment(\.editMode) var editMode

    @State var text: String = "Hello       World!       Hello       World!       Hello       World!       "
    @State var date = Date()
    
    let longString = String(repeating: "Hello World ", count: 20)
    
    var body: some View {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.calendar = calendar
        dateFormatter.locale = locale
        return VStack {
            Text(text).lineLimit(1)
            TextField("", text: $text)
            DatePicker(selection: $date, label: { Text("Date") })
                
            Text(dateFormatter.string(from: date))
                .frame(height:50)
            Divider()
            Text(longString)
            
            Text("pixelLength \(pixelLength)")
            if colorSchemeContrast == .increased {
                Text("colorSchemeContrast increased")
            } else if colorSchemeContrast == .standard {
                Text("colorSchemeContrast standard")
            }
            
            List{
                Text("１行目")
                Text("２行目")
                Section(header: Text("ヘッダー")) {
                    Text("３行目")
                }
            }
            Group{
                Text("displayScale \(displayScale)")
                if self.editMode?.wrappedValue == .inactive {
                    Text("Inactive")
                } else if self.editMode?.wrappedValue == .active {
                    Text("Active")
                } else if self.editMode?.wrappedValue == .transient {
                    Text("Transient")
                }
                EditButton()

            }
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

struct EnvironmentExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentExample()
            .environment(\.accessibilityEnabled, true)
            .environment(\.allowsTightening, false)
            .environment(\.calendar, Calendar(identifier: .japanese))
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .environment(\.colorScheme, .light)
            .environment(\.defaultMinListHeaderHeight, 100)
            .environment(\.defaultMinListRowHeight, 26)
            .environment(\.disableAutocorrection, true)
            .environment(\.displayScale, 2)
            .environment(\.font, .system(size: 30, weight: .ultraLight, design: .rounded))

            
            
            
            
            .environment(\.minimumScaleFactor, 0.5)
    }
}

