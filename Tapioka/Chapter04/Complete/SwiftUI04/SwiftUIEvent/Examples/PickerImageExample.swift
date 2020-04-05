import SwiftUI

fileprivate
struct ContentView: View {
        @State var weatherStr = "曇り時々晴れ"
    
        var body: some View {
            Picker(selection: $weatherStr,
                   label: Text("Weather : \(weatherStr)")) {
                Image(systemName: "sun.max.fill")
                    .tag("晴れ")
                Image(systemName: "cloud.fill")
                    .tag("曇り")
                Image(systemName: "cloud.sun.fill")
                    .tag("曇り時々晴れ")
                Image(systemName: "umbrella.fill")
                    .tag("雨")
                Image(systemName: "snow")
                    .tag("雪")
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

struct PickerImageExample: View {
    var body: some View {
        ContentView()
    }
}

struct PickerImageExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerImageExample()
    }
}

