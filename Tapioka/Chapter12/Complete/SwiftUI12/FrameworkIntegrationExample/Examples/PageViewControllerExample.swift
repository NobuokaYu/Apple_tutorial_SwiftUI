import SwiftUI

fileprivate
struct ContentView: View {
    var viewControllers = [
        UIHostingController(rootView: ImageFit("special1")),
        UIHostingController(rootView: ImageFit("special2")),
        UIHostingController(rootView: ImageFit("special3")),
        UIHostingController(rootView: ImageFit("special4"))]

    @State var page = 0
    
    var body: some View {
        VStack {
            
            Stepper(value: $page, in: 0...(viewControllers.count - 1)) {
                Text("page \(page)")
            }
            PageViewController(controllers: viewControllers, currentPage: $page)
        }
    }
    struct ImageFit: View {
        var image: String
        var body: some View {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
        }
        init(_ img: String) { image = img }
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

struct PageViewControllerExample: View {
    var body: some View {
        ContentView()
    }
}

struct PageViewControllerExample_Previews: PreviewProvider {
    static var previews: some View {
        PageViewControllerExample()
    }
}

