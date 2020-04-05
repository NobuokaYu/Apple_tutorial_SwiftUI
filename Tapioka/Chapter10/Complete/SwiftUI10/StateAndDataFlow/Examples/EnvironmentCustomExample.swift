import SwiftUI

struct DebugKey:EnvironmentKey {
    static let defaultValue: Bool = false
    
}

extension EnvironmentValues {
    public var debugMode: Bool {
        get{
            self[DebugKey.self]
        }
        set{
            self[DebugKey.self] = newValue
        }
    }
}

fileprivate
struct ContentView: View {
    @Environment(\.debugMode) var debugMode
    var body: some View {
        Group {
            if debugMode {
                Text("Debug Mode")
            } else {
                Text("Hello SwiftUI!")
            }
            #if DEBUG
            Text("Debug Mode")
            #else
            Text("Hello SwiftUI!")
            #endif
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

struct EnvironmentCustomExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentCustomExample_Previews: PreviewProvider {
    #if DEBUG
    static var previews: some View {
        EnvironmentCustomExample()
            .environment(\.debugMode, true)
    }
    #else
    static var previews: some View {
        EnvironmentCustomExample()
            .environment(\.debugMode, false)
    }
    #endif
}

