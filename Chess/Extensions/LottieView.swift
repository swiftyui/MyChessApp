import SwiftUI
import Lottie
 
struct LottieView: UIViewRepresentable {
    let lottieFile: String
    let loopMode: LottieLoopMode
    let animationView =  LottieAnimationView()
   

    func makeUIView(context: UIViewRepresentableContext<LottieView>)-> UIView {
        let view = UIView(frame: .zero)
        let animation = Animation.named(lottieFile)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        animationView.loopMode = loopMode
        animationView.backgroundBehavior = .pauseAndRestore
        view.addSubview(animationView)
        
 
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
 
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
 
    }
}
