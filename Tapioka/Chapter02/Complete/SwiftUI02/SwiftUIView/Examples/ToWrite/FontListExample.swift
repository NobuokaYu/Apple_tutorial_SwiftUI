//
//  FontListExample.swift
//  SwiftUIView
//
//  Created by 金田浩明 on 2019/08/02.
//  Copyright © 2019 example.com. All rights reserved.
//

import SwiftUI

struct FontListExample: View {
    var body: some View {
        VStack {
            VStack {
                Text("大きなタイトルテキストスタイル").font(.largeTitle)
                Spacer()
                Text("タイトルテキストスタイル").font(.title)
                Spacer()
                Text("見出しテキストスタイル").font(.headline)
                Spacer()
            }
            VStack{
                Text("小見出しテキストスタイル").font(.subheadline)
                Spacer()
                Text("本文テキストスタイル").font(.body)
                Spacer()
                Text("吹き出しのテキストスタイル").font(.callout)
                Spacer()
                Text("キャプションテキストスタイル").font(.caption)
                Spacer()
                Text("注釈のテキストスタイル").font(.footnote)
            }
        }
    }
}

#if DEBUG
struct FontListExample_Previews: PreviewProvider {
    static var previews: some View {
        FontListExample()
    }
}
#endif
