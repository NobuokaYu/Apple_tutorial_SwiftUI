import SwiftUI

fileprivate
struct ContentView: View {
    @State var pound: Double = 0
    @State var isChanged = false
    
    var body: some View {
        VStack {
            Slider(value: $pound, in: -100...100, step: 0.1,
                   onEditingChanged: { changed in
                        self.isChanged = changed
                       },
                       minimumValueLabel: Text("-100"),
                       maximumValueLabel: Text("100"),
                       label: { EmptyView() })
  
            if !isChanged {
                Text("\(pound) pound is \(pound * 0.45359237) Kg")
            } else {
                Text("\(pound)")
            }
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

struct SliderLabelExample: View {
    var body: some View {
        ContentView()
    }
}

struct SliderLabelExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderLabelExample()
    }
}

