import SwiftUI

struct RestaurantView: View {
    var title:String
    var type:String
    var note:String
    var rating: Int = 3

    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 0) {
                    ForEach(1...rating, id: \.self){_ in
                        Image(systemName:"star.fill")
                    }
                    ForEach(rating..<5, id: \.self){_ in
                        Image(systemName:"star")
                    }
                }.foregroundColor(.yellow)
                Text(type)
            }
            VStack(alignment:.leading) {
                Text(title).font(.largeTitle)
                Text(note).font(.subheadline)
            }
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(
            title: "レストラン名",
            type: "種別",
            note: "レストランの説明を記述"
        )
        .previewLayout(.fixed(width: 400,
                              height:100))

    }
}
