import SwiftUI

// 特別メニュー
struct Special : Hashable, Codable, Identifiable {
    public var id: String                        // ID
    public var imageName: String                 // 画像リソース名
    public var caption: String                   // キャプション
    public var text: String                      // サブテキスト
    public var image: Image { Image(imageName) } // 画像
    public var category: Category                // カテゴリ
    public var isFeatured: Bool                  // おすすめ
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case new = "New"            // 新商品
        case sale = "Sale"          // 割引販売
        case featured = "Featured"  // おすすめ
        case flavor = "Flavor"      // 味
    }
}
