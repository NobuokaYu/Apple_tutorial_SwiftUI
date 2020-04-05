import SwiftUI

struct Content: View {
    var content: String
    var color: Color
    var body: some View {
        ZStack {
            Rectangle().fill(color)
            Text(content).font(.largeTitle)
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content(content: "最初のビュー",color:.orange)
    }
}
