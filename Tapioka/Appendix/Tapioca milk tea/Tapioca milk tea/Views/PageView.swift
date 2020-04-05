import SwiftUI

struct PageView<Page: View>: View {
    private var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    init(_ views: [Page]) {
        self.viewControllers = views.map { view in
            UIHostingController(rootView: view)
        }
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers,
                               currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count,
                        currentPage: $currentPage)
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(dataStore.specials.map { $0.image })
            .aspectRatio(3/2, contentMode: .fit)
    }
}
