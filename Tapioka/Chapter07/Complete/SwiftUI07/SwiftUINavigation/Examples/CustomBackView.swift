import SwiftUI

struct CustomBackView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String = "Hello SwiftUI!"

    var body: some View {
        VStack {
            Text(name).font(.system(size: 30))
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("戻る")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CustomBackView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackView()
    }
}
