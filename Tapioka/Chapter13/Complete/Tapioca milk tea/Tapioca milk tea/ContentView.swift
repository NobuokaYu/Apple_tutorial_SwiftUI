import SwiftUI

struct ContentView : View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("HOME")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "textbox")
                    Text("ORDER")
                }
            OrderHistoryView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("LIST")
                }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
        return ContentView()
            .environment(\.managedObjectContext, context)
    }
}
