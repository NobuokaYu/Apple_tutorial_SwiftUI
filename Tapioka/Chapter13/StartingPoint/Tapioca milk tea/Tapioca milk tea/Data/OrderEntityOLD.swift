import Foundation

class OrderEntityOLD : Identifiable ,ObservableObject {
    @Published public var id: String        // ID
    @Published public var flavor: Int16     // 味の種類
    @Published public var iceCream: Int16   // アイストッピング
    @Published public var nataDeCoco: Bool  // ナタデココトッピング有無
    @Published public var other: String     // 備考
    @Published public var date: Date        // 注文日
    @Published public var quantity: Int16   // 注文数
    @Published public var favorite: Bool    // お気に入りフラグ

    /// 味の種類の文字列を取得する
    public var flavorName: String {
        Flavor(rawValue: self.flavor)!.name
    }
    
    /// アイストッピングの文字列を取得する
    public var iceCreamName: String {
        IceCream(rawValue: self.iceCream)!.name
    }
    
    init(
        id: String = UUID().uuidString,
        flavor: Int = 0,
        iceCream: Int = 0,
        nataDeCoco: Bool = true,
        other: String = "",
        date: Date = Date(),
        quantity: Int = 1,
        favorite: Bool = false)
    {
        self.id = id
        self.flavor = Int16(flavor)
        self.iceCream = Int16(iceCream)
        self.nataDeCoco = nataDeCoco
        self.other = other
        self.date = date
        self.quantity = Int16(quantity)
        self.favorite = favorite
    }
}
