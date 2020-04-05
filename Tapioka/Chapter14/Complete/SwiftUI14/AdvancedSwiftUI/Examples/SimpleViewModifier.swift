import SwiftUI

struct MyModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.blue)
            .background(Color.black)
            .cornerRadius(10)
    }
}

extension View {
    func blackTitle() -> some View {
        self.modifier(MyModifier())
    }
}

struct SimpleViewModifier: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .modifier(MyModifier())
    }
}

struct SimpleViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            SimpleViewModifier()
            SimpleViewModifier2()
            SimpleViewModifier3()
        }
    }
}

struct SimpleViewModifier2: View {
    var body: some View {
        ModifiedContent(content: Text("Hello SwiftUI!"),
                        modifier: MyModifier())
    }
}

struct SimpleViewModifier3: View {
    var body: some View {
        Text("Hello SwiftUI!")
            .blackTitle()
    }
}
