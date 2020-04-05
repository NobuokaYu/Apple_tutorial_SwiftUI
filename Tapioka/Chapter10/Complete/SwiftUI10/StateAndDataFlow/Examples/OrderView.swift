//
//  OrderView.swift
//  StateAndDataFlow
//
//  Created by aki on 2019/10/09.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @State var item = ""
    @EnvironmentObject var order: Order
    var body: some View {
        VStack {
            TextField("商品名を入力してください", text: $item)
            Button(action: {
                self.order.items.append(self.item)
            }) {
                Text("保存")
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
