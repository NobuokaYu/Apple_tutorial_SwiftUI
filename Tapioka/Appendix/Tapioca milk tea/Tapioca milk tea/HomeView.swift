import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Special]] {
        Dictionary(
            grouping: dataStore.specials.filter{
                $0.category != .featured
            },
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Special] {
        dataStore.specials.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                PageView(featured.map { SpecialCard(special:$0) })    
                    .frame(height: 280)
                
                ShopRow(shops: dataStore.shops)
        
                ForEach(categories.keys.sorted(),
                        id: \.self) { key in
                    CategoryRow(categoryName: LocalizedStringKey(key),
                                items: self.categories[key]!)
                }.navigationBarTitle(Text("Home"))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}
