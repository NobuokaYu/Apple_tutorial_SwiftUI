import SwiftUI

fileprivate
struct ContentView: View {
    var body: some View {
        List {
            RestaurantView(
                title: "壱岐島",
                type: "居酒屋",
                note: "壱岐島産の新鮮魚介を使った和食を提供"
            )
            RestaurantView(
                title: "伊々",
                type: "小料理屋",
                note: "何とも例えようのない店構え"
            )
            RestaurantView(
                title: "ターリー屋",
                type: "インド料理",
                note: "ナンおかわり無料、日本人向けで食べやすい"
            )
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

struct StaticListExample3: View {
    var body: some View {
        ContentView()
    }
}

struct StaticListExample3_Previews: PreviewProvider {
    static var previews: some View {
        StaticListExample3()
    }
}

