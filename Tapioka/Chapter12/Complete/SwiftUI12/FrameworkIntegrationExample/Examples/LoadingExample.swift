import SwiftUI

fileprivate
struct ContentView: View {
    
    @State var isLoading = false
    @State var title = ""
    @State var example: [String] = []

    var body: some View {
        LoadingView(title: $title, isShowing: $isLoading){
            NavigationView {
                VStack {
                    Button(action: {
                        self.isLoading = true
                        self.loadingDemo()
                    }){
                        Text("処理中画面を表示します")
                    }

                    List {
                        ForEach(self.example, id: \.self){
                            Text($0)
                        }
                    }.navigationBarTitle("Loading View Demo")
                }
            }
        }.onAppear() {
            self.addData()
        }
    }
    
    func loadingDemo() {
        self.title = "読込中..."
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.processingDemo()
        }
    }
    
    func processingDemo() {
        self.title = "データ展開中..."
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isLoading = false
            self.addData()
        }
    }
    
    func addData() {
        let from = example.count
        let to = from + 3
        for i in from..<to {
            self.example.append("Content example \(i)")
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

struct LoadingExample: View {
    var body: some View {
        ContentView()
    }
}

struct LoadingExample_Previews: PreviewProvider {
    static var previews: some View {
        LoadingExample()
    }
}

