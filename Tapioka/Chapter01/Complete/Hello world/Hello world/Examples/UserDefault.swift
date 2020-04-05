import Foundation
@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    var wrappedValue: T {
        get {
        return UserDefaults.standard.object(forKey: key)
            as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

enum GlobalSettings {
    @UserDefault(key: "FOO_FEATURE_ENABLED", defaultValue: false)
    static var isFooFeatureEnabled: Bool
    
    @UserDefault(key: "BAR_FEATURE_VALUE", defaultValue: -1)
    static var barFeatureValue: Int
}
