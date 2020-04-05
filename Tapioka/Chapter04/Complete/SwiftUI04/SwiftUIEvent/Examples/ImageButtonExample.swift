import SwiftUI

fileprivate
struct ContentView: View {
    
    @State var isRecording = false
    
    var body: some View {

        Button(action: {
            self.isRecording.toggle()
        }) {
            if isRecording {
                Image(systemName: "mic.fill")
                    .font(.system(size: 200))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "mic.slash.fill")
                    .font(.system(size: 200))
                    .foregroundColor(.secondary)
                    .offset(x: 1.5, y: 0)
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

struct ImageButtonExample: View {
    var body: some View {
        ContentView()
    }
}

struct ImageButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageButtonExample()
    }
}

