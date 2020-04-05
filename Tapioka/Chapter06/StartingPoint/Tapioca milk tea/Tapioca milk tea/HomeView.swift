import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Special]] {
        Dictionary(
            grouping: dataStore.specials.filter {
                $0.category != .featured
            },
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        ScrollView {
            ShopRow(shops: dataStore.shops)

            ForEach(categories.keys.sorted(),
                    id: \.self) { key in
                CategoryRow(categoryName: key,
                            items: self.categories[key]!)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
