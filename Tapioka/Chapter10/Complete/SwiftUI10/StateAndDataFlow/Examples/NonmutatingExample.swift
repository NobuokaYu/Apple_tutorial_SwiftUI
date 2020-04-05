//

import SwiftUI

struct NonmutatingExample: View {
    
    let settings: Settings = UserDefaults.standard
    
    var body: some View {
        Text("hoge").onAppear {
            self.settings["myProp"] = "someValue"
        }
    }
}
protocol Settings {
    subscript(key: String) -> AnyObject? { get nonmutating set }
}

struct Defaults: Settings {
    typealias Set = (String, AnyObject?) -> Void
    typealias Get = (String) -> AnyObject?
    
    let set: Set
    let get: Get
    
    subscript(key: String) -> AnyObject? {
        get { return get(key) }
        nonmutating set { set(key, newValue) }
    }
}


extension UserDefaults: Settings {
    subscript(key: String) -> AnyObject? {
        get { return object(forKey: key) as AnyObject? }
        set { set(newValue, forKey: key) }
    }
}


struct NonmutatingExample_Previews: PreviewProvider {
    static var previews: some View {
        NonmutatingExample()
    }
}
