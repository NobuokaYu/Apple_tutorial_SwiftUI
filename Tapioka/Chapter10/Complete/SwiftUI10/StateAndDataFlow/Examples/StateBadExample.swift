import SwiftUI

fileprivate
struct ContentView: View {
    
    var subView = SubView()
    
    var body: some View {
        
        VStack {
            Button(action: {
                self.subView.score = 100
                
            }) {
                Text("score 100")
            }
            
            subView
        }
        
    }
}

struct SubView: View {
    
    @State var score = 0
    
    var body: some View {
        Button(action: {
            self.score = self.score + 1
            
        }) {
            Text("Count up \(score)")
        }
    }
}

struct StateBadExample: View {
    var body: some View {
        ContentView()
    }
}


// MARK: サンプル実行用コード

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 */

struct StateBadExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
