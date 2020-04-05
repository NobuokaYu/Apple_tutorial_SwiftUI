import SwiftUI

struct ImNotSureModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            content
            Text("知らんけど。")
        }
    }
}

extension View {
    func ImNotSure() -> some View {
        self.modifier(ImNotSureModifier())
    }
}

struct ViewModifierExample: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("ここのタピオカおいいしいらしいで！")
            Divider()
            Text("ここのタピオカおいいしいらしいで！")
                .ImNotSure()
            Divider()
            Text("1階に珈琲店できたらしいで！")
            Divider()
            Text("1階に珈琲店できたらしいで！")
                .ImNotSure()
        }
    }
}

struct ViewModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierExample()
    }
}
