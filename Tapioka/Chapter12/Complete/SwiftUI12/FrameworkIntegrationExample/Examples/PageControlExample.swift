import SwiftUI

fileprivate
struct ContentView: View {
    @State var pageNo = 1
    var body: some View {
                VStack {
            Stepper(value: $pageNo, in: 0...20) {
                Text("pageNo \(pageNo)")
            }.fixedSize()
            PageControl(numberOfPages: 20, currentPage: $pageNo)
        }.frame(minWidth: 0, maxWidth: .infinity,
                minHeight: 0, maxHeight: .infinity)
            .background(Color.gray)
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

struct PageControlExample: View {
    var body: some View {
        ContentView()
    }
}

struct PageControlExample_Previews: PreviewProvider {
    static var previews: some View {
        PageControlExample()
    }
}

