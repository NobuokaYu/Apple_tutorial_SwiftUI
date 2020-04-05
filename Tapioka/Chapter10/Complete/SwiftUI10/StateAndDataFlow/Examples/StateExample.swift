import SwiftUI




struct StateExample: View {

    //var count: State<Int> = State.init(initialValue: 0)
    
    @State private var count: Int = 0
    
//    var count: Int {
//        get {
//            return ＜SwiftUIが管理しているメモリ領域＞
//        }
//        nonmutating set {
//            ＜SwiftUIが管理しているメモリ領域＞ = newValue
//        }
//    }
    
    @UserDefault
    var testString: String = "HOGE"
    
    var body: some View {
        Button(action: {
            self.count = self.count + 1
            //self.isFooFeatureEnabled = true
        }) {
            Text("count \(count) \(testString)")
        }
    }
}
//
//@propertyWrapper struct MyState<Value> : DynamicProperty {
//
//    init(wrappedValue: Value) {
//        defaultValue = wrappedValue
//    }
//
//    let defaultValue: Value
//
//    var wrappedValue: Value {
//        get {
//            return UserDefaults.standard.object(forKey: "TEST") as? Value ?? defaultValue
//        }
//        nonmutating set {
//            UserDefaults.standard.set(newValue, forKey: "TEST")
//
//        }
//    }
//
//    public var projectedValue: Binding<Value> {
//        get{
//            Binding.constant(defaultValue)
//        }
//    }
//
//}


struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}


@propertyWrapper
struct UserDefault<T> {
    let key: String = "TEST_FEATURE_ENABLED"
    let defaultValue: T

    init(wrappedValue: T) {
        defaultValue = wrappedValue
    }
    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        nonmutating set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
