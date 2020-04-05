import SwiftUI

 extension VerticalAlignment {
    private enum CustomAlign : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context.height / 2
        }
    }

    public static let customAlign = VerticalAlignment(CustomAlign.self)
}

fileprivate
struct ContentView: View {
    
    private let centerLine = CenterLineView()
    
    
    var body: some View {
        VStack(spacing:40) {
            HStack(spacing: 25) {
                VStack {
                    Text("1st")
                    Text("2nd")
                    Text("3rd")
                        .border(Color.blue)
                        .overlay(centerLine)
                    Text("4th")
                }
                VStack {
                    Text("02")
                    Text("03")
                        .border(Color.blue)
                        .overlay(centerLine)
                    Text("04")
                    Text("05")
                }
            }.padding(5).border(Color.blue)
            
            HStack(alignment: .customAlign,
                   spacing: 25) {
                VStack {
                    Text("1st")
                    Text("2nd")
                    Text("3rd")
                        .border(Color.blue)
                        .overlay(centerLine)
                        .alignmentGuide(.customAlign) { d in
                            d.height / 2
                        }
                    Text("4th")
                    
                }
                VStack {
                    Text("02")
                    Text("03")
                        .border(Color.blue)
                        .overlay(centerLine)
                        .alignmentGuide(.customAlign) { d in
                            d.height / 2
                        }
                    Text("04")
                    Text("05")
                }
            }.padding(5).border(Color.blue)
        }
    }
}
fileprivate
struct CenterLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.addLines([
                CGPoint(x: -15,
                        y: rect.height / 2),
                CGPoint(x: rect.width + 15 ,
                        y: rect.height / 2),
            ])
        }
    }
}
fileprivate
struct CenterLineView: View {
    var body: some View {
        CenterLine()
            .stroke(Color.red)
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/


// MARK: サンプル実行用コード

struct AlignmentGuideHorizontalExample: View {
    var body: some View {
        ContentView()
    }
}

struct AlignmentGuideHorizontalExample_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentGuideHorizontalExample()
    }
}
