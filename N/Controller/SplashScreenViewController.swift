//
//  SplashScreenViewController.swift
//  N
//
//  Created by Agustian DM on 08/02/21.
//

import UIKit
import Lottie

class SplashScreenViewController: UIViewController {
    
    //MARK: - Properties
    @IBOutlet weak var animationLottie: AnimationView!
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        lottieConfig()
    }
    
    //MARK: - Selector
//    @IBAction func getStartedButtonDidPressed(_ sender: Any) {
//        let homeView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "homeVC") as! HomeTableViewController
//        homeView.modalPresentationStyle = .fullScreen
//        self.present(homeView, animated: true, completion: nil)
//    }
    
    
    
    //MARK: - Helpers
    func lottieConfig() {
        let animationView = AnimationView(name: "newsLottie")
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        
        view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
    }
}
