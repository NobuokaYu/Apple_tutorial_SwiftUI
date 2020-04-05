import SwiftUI

fileprivate
struct ContentView: View {
    @State var error: AlertError?
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Button(action: {
                self.error = AlertError(
                    title: "警告",
                    message: "燃料の残量が著しく低下。危険です。",
                    ok: "わかった")
            }) {
                Text("アラートを表示")
            }
            
            Spacer()
            
            Text("\(error?.description ?? "error is nil")")
            
        }.alert(item: $error) { error in
            Alert(title: Text(error.title),
                  message: Text(error.message),
                  dismissButton: .default(Text(error.ok)))
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

struct AlerItemExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlerItemExample_Previews: PreviewProvider {
    static var previews: some View {
        AlerItemExample()
    }
}

