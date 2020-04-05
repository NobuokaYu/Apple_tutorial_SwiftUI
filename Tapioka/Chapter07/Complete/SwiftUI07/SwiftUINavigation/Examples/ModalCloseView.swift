// 


import SwiftUI

struct ModalCloseView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            Text("ModalView")
                .font(.system(size: 30))
                .navigationBarItems(trailing: Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("close")
                })
        }
    }
}

struct ModalCloseView_Previews: PreviewProvider {
    static var previews: some View {
        ModalCloseView()
    }
}
