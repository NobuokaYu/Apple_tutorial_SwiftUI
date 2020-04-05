import SwiftUI

fileprivate
struct ContentView: View {
    @State var pound: Double = 0
    
    var body: some View {
        VStack {
            Slider(value: $pound, in: -100...100, step: 0.1)
            Text("\(pound) pound is \(pound * 0.45359237) Kg")
        }.padding()
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

struct SliderExample: View {
    var body: some View {
        ContentView()
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}

