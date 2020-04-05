import SwiftUI

struct ExampleView: View {
    
    @State var showModal = false

    var body: some View {
        List {
            Section{
                ButtonEx(showModal: $showModal, text: "InlineExample") { InlineExample() }
                ButtonEx(showModal: $showModal, text: "NavigationViewExample") { NavigationViewExample() }
                ButtonEx(showModal: $showModal, text: "NavigationPushExample") { NavigationPushExample() }
                ButtonEx(showModal: $showModal, text: "NavigationListExample") { NavigationListExample() }
                ButtonEx(showModal: $showModal, text: "CustomBackExample") { CustomBackExample() }
                ButtonEx(showModal: $showModal, text: "FormViewExample_List") { FormViewExample_List() }
                ButtonEx(showModal: $showModal, text: "FormViewExample") { FormViewExample() }
                ButtonEx(showModal: $showModal, text: "FormSectionExample") { FormSectionExample() }
                ButtonEx(showModal: $showModal, text: "SimpleSheetExample") { SimpleSheetExample() }
                ButtonEx(showModal: $showModal, text: "SheetDismissExample") { SheetDismissExample() }
            }
            Section{
                ButtonEx(showModal: $showModal, text: "SheetListExample") { SheetListExample() }
                ButtonEx(showModal: $showModal, text: "SheetCloseExample") { SheetCloseExample() }
                ButtonEx(showModal: $showModal, text: "TabExample") { TabExample() }
                ButtonEx(showModal: $showModal, text: "TabViewExample") { TabViewExample() }
            }
        }
    }
}
struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}

struct ButtonEx<V>: View where V: View{
    @Binding var showModal:Bool
    let text: String
    let view: ()-> V
    var body: some View {
        Button(action: {
            self.showModal.toggle()
        }) {
            Text(text)
        }.sheet(isPresented: $showModal) {
            self.view()
        }
    }
}
