import SwiftUI
import Combine

fileprivate
class MyUndoData: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    weak var undoManager: UndoManager?
    var selected = "" {
        willSet {
            let oldValue = self.selected
            undoManager?.registerUndo(
                withTarget: self,
                handler: { data in
                    data.selected = oldValue
            })
            objectWillChange.send()
        }
    }
}
fileprivate
struct ContentView: View {
    @Environment(\.undoManager) var envUndoManager
    @ObservedObject var undoData = MyUndoData()
    var susi = ["まぐろ","サーモン","いくら","エビ","穴子"]
    var body: some View {
        
        undoData.undoManager = envUndoManager
        
        return VStack {
            if envUndoManager != nil {
                Text("supported")
            } else {
                Text("undo/redo is not supported")
            }
            
            Picker(selection: $undoData.selected ,
                   label: Text("寿司ネタを選択して下さい"))
            {
                ForEach(0..<susi.count) {
                    Text(self.susi[$0])
                        .tag(self.susi[$0])
                }
            }
            
            if envUndoManager?.canUndo ?? false {
                Button(action: {
                    self.envUndoManager?.undo()
                }) {
                    Text("Undo")
                }
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

struct EnvironmentUndoManagerExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentUndoManagerExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentUndoManagerExample()
    }
}

