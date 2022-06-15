import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                Text("COVID - 19")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("STATUS")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .offset(x: 0, y: 8)
                    
                }.padding(20)
                    .offset(x: -40, y: 0)
                    
                GraphView()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
