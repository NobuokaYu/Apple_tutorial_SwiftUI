import SwiftUI

fileprivate
struct ContentView: View {
    @State var width: CGFloat = 1000
    var body: some View {
        ZStack {
            ScrollView([.vertical, .horizontal],
                       showsIndicators: false)
            {
                Image("flavor1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: width)
            }.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("\(width)")
                Slider(value: $width,
                       in: 600...2000,
                       step: 10)
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

struct AllScrollViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct AllScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AllScrollViewExample()
    }
}

