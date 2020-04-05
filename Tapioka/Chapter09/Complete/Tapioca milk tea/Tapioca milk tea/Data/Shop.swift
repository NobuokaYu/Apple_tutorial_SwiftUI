import SwiftUI
import CoreLocation

struct Shop : Hashable, Codable, Identifiable {
    public var id: String                           // ID
    public var name: String                         // 店舗名
    public var phoneNumber: String                  // 電話番号
    public var address: String                      // 連絡先
    fileprivate var imageName: String               // 画像リソース名
    public var image: Image { Image(imageName) }    // 画像
    fileprivate var coordinates: Coordinates        // ショップの緯度・経度
    var locationCoordinate: CLLocationCoordinate2D {// 地図データ
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
