import SwiftUI

fileprivate
struct Restaurant {
    var title:String    // レストラン名称
    var type:String     // 種別
    var note:String     // レストランの説明
    var rating:Int      // 1〜5
}

fileprivate
struct ContentView: View {

    var body: some View {
        
        let restaurants = [
            Restaurant(
                title: "壱岐島",
                type: "居酒屋",
                note: "壱岐島産の新鮮魚介を使った和食を提供",
                rating: 5
            ),
            Restaurant(
                title: "伊々",
                type: "小料理屋",
                note: "何とも例えようのない店構え",
                rating: 3
            ),
            Restaurant(
                title: "ターリー屋",
                type: "インド料理",
                note: "ナンおかわり無料、日本人向けで食べやすい",
                rating: 4
            )
        ]

        return List {
            ForEach(0...2, id: \.self) {
                RestaurantView(title: restaurants[$0].title,
                               type: restaurants[$0].type,
                               note: restaurants[$0].note,
                               rating: restaurants[$0].rating)
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

struct DynamicListExample: View {
    var body: some View {
        ContentView()
    }
}

struct DynamicListExample_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListExample()
    }
}

