import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(Color.yellow)
            Text("2nd View").font(.system(size: 30))                   
                .font(.largeTitle)
        }.navigationBarTitle("Second View")
    }
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
