import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Go DetailView()")
            }
        }.onAppear {
            print("ContentView 表示された!")
        }.onDisappear {
            print("ContentView 非表示になった!")
        }
    }
}
fileprivate
struct DetailView: View {
    
    @State var size:CGFloat = 1.0
    
    var body: some View {
        VStack {
            Text("DetailView")
                .font(.system(size: 300))
            .scaleEffect(size)
                .animation(.easeOut(duration: 2))
            .fixedSize()
        }.onAppear {
            print("DetailView 表示された!")
            withAnimation{
                self.size = 0.1
            }
        }.onDisappear {
            print("DetailView 非表示になった!")
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


struct OnAppearExample: View {
    var body: some View {
        ContentView()
    }
}

struct OnAppearExample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearExample()
    }
}

