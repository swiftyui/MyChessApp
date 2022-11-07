import SwiftUI

struct ForgotPasswordView: View {
    @EnvironmentObject var userModel: UserModel
    @State var text: String = ""
    
    var body: some View {
        VStack {
            
            LottieView(lottieFile: "password", loopMode: .loop)
                .frame(width: 200, height: 200)
            
            Text("Forgot your password? No worries, just give us your email address and we'll send you a recovery link!")
                .padding()
            
            TextField("Email address....", text: self.$text )
                .padding()
                .multilineTextAlignment(.leading)
                .frame(width: 335, height: 40)
                .overlay {
                    Capsule(style: .continuous).stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
                }
            
            Text("Send recovery link")
                .frame(width: 200, height: 15)
                .padding()
                .background(Color(hue: 0.523, saturation: 0.0, brightness: 0.177))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .onTapGesture {
                    
                }
        }
    }
}
