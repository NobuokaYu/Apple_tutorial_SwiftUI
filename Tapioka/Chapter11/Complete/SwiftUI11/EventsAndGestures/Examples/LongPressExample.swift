import SwiftUI

fileprivate
struct ContentView: View {
    @State var showImage = false

    var body: some View {
        HStack {
            Text("ロングタップ")
                .onLongPressGesture(pressing:{ press in
                    print("pressing: \(press)")
                }) {
                    print("perform")
                    self.showImage.toggle()
                }
            if showImage {
                Image(systemName: "star")
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

struct LongPressExample: View {
    var body: some View {
        ContentView()
    }
}

struct LongPressExample_Previews: PreviewProvider {
    static var previews: some View {
        LongPressExample()
    }
}

