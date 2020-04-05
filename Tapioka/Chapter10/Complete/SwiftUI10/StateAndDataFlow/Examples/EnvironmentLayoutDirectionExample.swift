import SwiftUI

fileprivate
struct FiveStar: View {
    @Environment(\.layoutDirection) var envLayoutDirection
    @State var rating:Int
    var stars:[Image] {
        var _stars: [Image] = []
        for _ in 1...rating {
            _stars.append(Image(systemName:"star.fill"))
        }
        for _ in rating..<5 {
            _stars.append(Image(systemName:"star"))
        }
        if envLayoutDirection == .rightToLeft {
            return _stars.reversed()
        }
        return _stars
    }
    var body: some View {
        HStack(spacing:0) {
            ForEach(0..<5,id: \.self) { i in
                self.stars[i]
            }
        }
    }
}

fileprivate

struct ContentView: View {
    @Environment(\.locale) var envLocale
    var body: some View {
        HStack {
            Image("big-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
            if envLocale.languageCode == "ar" {
                Text("مرحبا بالعالم")
            } else {
                Text("Hello world")
            }
            Spacer()
            FiveStar(rating: 4)
                .foregroundColor(.orange)
        }
    }
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.layoutDirection, .rightToLeft)
            .environment(\.locale, Locale(identifier: "ar_AR"))
 
    }
}
*/


// MARK: サンプル実行用コード

struct EnvironmentLayoutDirectionExample: View {
    var body: some View {
        ContentView()
    }
}

struct EnvironmentLayoutDirectionExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentLayoutDirectionExample()
            .environment(\.layoutDirection, .rightToLeft)
            .environment(\.locale, Locale(identifier: "ar_AR"))
    }
}

