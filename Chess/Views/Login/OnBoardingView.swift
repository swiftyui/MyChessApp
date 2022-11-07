import SwiftUI


struct OnBoardingView: View {
    
    @State var selectedPage = 0
    @State private var book = false
    @State private var track = false
    @State private var ride = false
    @EnvironmentObject var userModel: UserModel
    

    var body: some View {
        
        NavigationStack {
            
             ZStack{
                 
                 /// Purple Background
                 Circle()
                     .frame(width: 600, height: 600)
                     .foregroundColor(Color(hue: 0.922, saturation: 0.753, brightness: 0.385))
                     .offset(x: 0, y: -230)
                 
                 TabView(selection: $selectedPage)
                 {
                     ForEach(0..<testData.count) { index in
                         CardView(card : testData[index], index: index).tag(index)
                     }
                 }
                 .tabViewStyle(.page)
                 .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                 

                 //Selected Pages
                 if (selectedPage == 0)
                 {
                     VStack {
                         Text("Welcome to Chess!")
                             .font(.title)
                             .bold()
                             .foregroundColor(.white)
                             .padding()
                         
                         Image(systemName: "crown")
                             .resizable()
                             .frame(width: 280, height: 230)
                             .foregroundColor(.white)
                             .padding()
                         
                         Text("Let's get started")
                             .foregroundColor(.white)
                             .font(.body)
                             .bold()
                         
                         Spacer()
                     }
                     
                 }
                 
                 if (selectedPage == 1)
                 {
                     VStack {
                         Text("Join us today!")
                             .font(.title)
                             .bold()
                             .foregroundColor(.white)
                             .padding()
                         
                         Image(systemName: "person.crop.artframe")
                             .resizable()
                             .frame(width: 260, height: 280)
                             .foregroundColor(.white)
                             .padding()
                         
                         
                         Spacer()
                     }
                 }

             }
         }
        .tint(Color(hue: 0.922, saturation: 0.753, brightness: 0.385))
        .navigationBarHidden(true)
    }
}
