//
//  LoginVC.swift
//  CoordinatorDemo
//
//  Created by Bhaskar on 01/02/22.
//

import UIKit

class LoginVC: UIViewController, CoordinatorBoard {
    
    weak var loginCoordinator: LoginCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        loginCoordinator?.navigateToHomeVC()
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        loginCoordinator?.navigateToSignupVC()
    }
    
    @IBAction func resetPasswordTapped(_ sender: Any) {
        loginCoordinator?.navigateToResetPasswordVC()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
