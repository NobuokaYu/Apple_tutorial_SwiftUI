import SwiftUI

fileprivate
struct ContentView: View {
    var images = [
        (systemName: "sun.max.fill",    tag:"晴れ"),
        (systemName: "cloud.fill",      tag:"曇り"),
        (systemName: "cloud.sun.fill",  tag:"曇り時々晴れ"),
        (systemName: "umbrella.fill",   tag:"雨"),
        (systemName: "snow",            tag:"雪"),
    ]
    @State var weatherId = 1

    var body: some View {
        VStack {
            Picker(selection: $weatherId,
                   label: Text("Weather")) {
                        ForEach(0..<images.count){
                           Image(systemName: self.images[$0].systemName)
                   }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("\(images[weatherId].tag)")
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

struct SegmentedControlExample: View {
    var body: some View {
        ContentView()
    }
}

struct SegmentedControlExample_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlExample()
    }
}

