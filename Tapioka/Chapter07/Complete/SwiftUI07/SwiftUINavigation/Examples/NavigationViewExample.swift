import SwiftUI

fileprivate
struct ContentView: View {
    @State var message = "NavigationBarボタンをタップして下さい"

    var body: some View {
        NavigationView{
            Text(message).font(.largeTitle)
                .navigationBarTitle("Welcome")
                .navigationBarItems(
                    leading:
                        Button(action: {
                            self.message = "Close tapped!"
                        }) {
                            Text("Close")
                        },
                    trailing:
                        HStack {
                            Button(action: {
                                self.message = "Help tapped!"
                            }) {
                                Text("Help")
                            }
                            Button(action: {
                                self.message = "Info tapped!"
                            }) {
                                Image(systemName: "info.circle")
                            }
                        }
                )
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

struct NavigationViewExample: View {
    var body: some View {
        ContentView()
    }
}

struct NavigationViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExample()
    }
}

