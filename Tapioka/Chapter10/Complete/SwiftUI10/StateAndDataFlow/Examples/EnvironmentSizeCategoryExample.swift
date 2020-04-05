import SwiftUI

fileprivate
struct ContentView: View {
    @Environment(\.sizeCategory) var sizeCategory
    var body: some View {
        Text("\(sizeCategory.description)")
    }
}
extension ContentSizeCategory {
    var description: String {
        switch self {
        case .extraSmall:
            return "extraSmall"
        case .small:
            return "small"
        case .medium:
            return "medium"
        case .large:
            return "large"
        case .extraLarge:
            return "extraLarge"
        case .extraExtraLarge:
            return "extraExtraLarge"
        case .extraExtraExtraLarge:
            return "extraExtraExtraLarge"
        case .accessibilityMedium:
            return "accessibilityMedium"
        case .accessibilityLarge:
            return "accessibilityLarge"
        case .accessibilityExtraLarge:
            return "accessibilityExtraLarge"
        case .accessibilityExtraExtraLarge:
            return "accessibilityExtraExtraLarge"
        case .accessibilityExtraExtraExtraLarge:
            return "accessibilityExtraExtraExtraLarge"
        @unknown default:
            return "unknown"
        }
    }
}


/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)

    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentSizeCategoryExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentSizeCategoryExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentSizeCategoryExample()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}

