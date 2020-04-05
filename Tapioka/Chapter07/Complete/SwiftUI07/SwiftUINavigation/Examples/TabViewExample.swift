import SwiftUI

fileprivate
struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection){
            Content(content: "First View", color: .yellow)
                .tabItem {
                    VStack {
                        Image(systemName: "tornado")
                        Text("First")
                    }
                }.tag(0)
           
            Content(content: "Second View", color: .purple)
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Second")
                    }
                }.tag(1)
           
            Content(content: "Third View", color: .green)
                .tabItem {
                    VStack {
                        Image(systemName: "cart.fill")
                        Text("Third")
                    }
                }.tag(2)
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

struct TabViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

