import SwiftUI

struct OrderView: View {
    @ObservedObject var keyboard = KeyboardObserver()
    
    @State private var flavor: Int = 0
    @State private var nataDeCoco = false
    @State private var iceCream: Int = 0
    @State private var quantity = 1
    @State private var other = ""
    
    @State private var toSave = false
    @State private var isSaved = false
    
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        ScrollView {
            VStack {
                
                TapiocaTeaView(iceCream: iceCream,
                               flavor: flavor,
                               nataDeCoco: nataDeCoco)
                    .frame(width: 350, height: 350)
                
                HStack {
                    Text("Select flavor")
                    Picker(selection: $flavor,
                           label: Text("Select flavor")) {
                        ForEach(0 ..< flavorArray.count) {
                            Text(LocalizedStringKey(flavorArray[$0]))
                        }
                    }.labelsHidden()
                    .frame(minWidth: 250)
                    .clipped()
                }
                
                Toggle(isOn: $nataDeCoco) {
                    Text("Nata de coco topping")
                }
                
                Picker(selection: $iceCream,
                       label: Text("Ice cream topping")) {
                    ForEach(0 ..< iceCreamArray.count) {
                        Text(LocalizedStringKey(iceCreamArray[$0]))
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                Stepper(value: $quantity ,in: 1...10) {
                    Text("Quantity : \(quantity)")
                }
                TextField("Other request", text: $other)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Divider()
                
                Button(action: {
                    self.toSave = true
                }) {
                    Text("Order")
                }
            }.padding()
            Spacer().alert(isPresented: $toSave) {
                Alert(
                    title: Text("Message"),
                    message: Text("Save?"),
                    primaryButton: .default(Text("Yes"),
                                            action: {
                                                self.save()
                                            }),
                    secondaryButton: .cancel(Text("cancel")))
            }
            Spacer().alert(isPresented: $isSaved) {
                Alert(title: Text("Message"),
                      message: Text("The order was saved successfully."),
                      dismissButton: .default(Text("OK")))
            }
        }.onAppear{
            self.keyboard.startObserve()
        }.onDisappear{
            self.keyboard.stopObserve()
        }.padding(.bottom, keyboard.keyboardHeight)
    }
    
    private func save() {
       
        OrderEntity.create(in: viewContext,
                           flavor: flavor,
                           nateDeCoco: nataDeCoco,
                           iceCream: iceCream,
                           quantity: quantity,
                           other: other,
                           date: Date(),
                           favorite: false)
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.isSaved = true
            self.clear()
        }
    }
    private func clear() {
        flavor = 0
        nataDeCoco = false
        iceCream = 0
        quantity = 1
        other = ""
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environment(\.locale, Locale(identifier: "ja_JP"))
    }
}
