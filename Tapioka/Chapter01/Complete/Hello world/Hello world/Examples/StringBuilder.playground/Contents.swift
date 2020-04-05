//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

@_functionBuilder
public struct StringBuilder {
    public static func buildBlock(_ a: String, _ b: String ) -> String {
        a + b
    }
    public static func buildBlock(_ a: String, _ b: String, _ c: String) -> String {
        a + b + c
    }
}
@StringBuilder func ab() -> String {
    "あの"
    "イーハトーヴォの"
}
var str0 = ab()

@StringBuilder func abc() -> String {
    "あの"
    "イーハトーヴォの"
    "すきとおった風、"
}

var str1 = abc()

func abc2() -> String {
    let a = "あの"
    let b = "イーハトーヴォの"
    let c = "すきとおった風、"
    return StringBuilder.buildBlock(a, b, c)
}
var str2 = abc2()
