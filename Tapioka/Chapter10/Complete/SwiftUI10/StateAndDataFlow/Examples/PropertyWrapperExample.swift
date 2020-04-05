// 


import SwiftUI


// 
struct PropertyWrapperExample: View {
    var textState:String {
        get { _textState.wrappedValue }
        set { _textState.wrappedValue = newValue }
    }
    var _textState: State<String> = State.init(wrappedValue: "Hello World!")
    
    var body: some View {
        VStack {
            TextField("メッセージを入力してください", text: _textState.projectedValue)
            Text(textState)
        }
    }
}

struct PropertyWrapperExample_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperExample()
    }
}

@propertyWrapper
struct WrapParentheses {
    public var storedValue: String
    init(wrappedValue: String) {
        self.storedValue = wrappedValue
    }
    
    var wrappedValue: String {
        get {
            return "(" + storedValue + ")"
        }
        mutating set {
            self.storedValue = newValue
        }
    }
}
