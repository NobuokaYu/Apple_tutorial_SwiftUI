import SwiftUI

fileprivate
struct ContentView: View {
    @State var labelText = "Hello SwiftUI"
    
    var body: some View {
        VStack(spacing: 80) {
            Text(labelText)
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Button(action: {self.labelText = "Yes Tapped!"}) {
                Text("Tap!!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
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

struct ContentView9: View {
    var body: some View {
        ContentView()
    }
}

struct ContentView9_Previews: PreviewProvider {
    static var previews: some View {
        ContentView9()
    }
}

