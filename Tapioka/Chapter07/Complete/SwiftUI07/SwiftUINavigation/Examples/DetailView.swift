import SwiftUI

struct DetailView: View {
    var name: String = "Hello SwiftUI!"
    var body: some View {
        Text(name).font(.system(size: 30))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: "受け取った文字列")
    }
}
