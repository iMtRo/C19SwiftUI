import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var filename : String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>)-> UIView {
        let view = UIView(frame: .zero)
        let animationView = AnimationView()
        let animation = Animation.named (filename)
        animationView.animation = animation
        animationView.contentMode =  .scaleAspectFit
        animationView.play()
        animationView.play(
            //Start
            fromProgress: 0,
            //End
            toProgress: 1,
            //Number of Times
            loopMode: LottieLoopMode.repeat(1),
            completion: { (finished) in
                if finished {
                    print("Animation Complete")
                } else {
                    print("Animation cancelled")
                }
            })
        
       animationView.translatesAutoresizingMaskIntoConstraints = false
       view.addSubview(animationView)
       
       NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo:view.widthAnchor),
       animationView.heightAnchor.constraint(equalTo:view.heightAnchor)])
      
       return view
    }
    func updateUIView( _ uiView: UIView, context: UIViewRepresentableContext<LottieView>){}
}
