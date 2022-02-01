//
//  LoginCoordinator.swift
//  CoordinatorDemo
//
//  Created by Bhaskar on 01/02/22.
//

import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = [Coordinator]()
    weak var mainCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginVC = LoginVC.instantiateFromStoryBoard()
        loginVC.loginCoordinator = self
        navigationController.pushViewController(loginVC, animated: true)
    }
    
    func navigateToSignupVC() {
        let signupCoordinator = SignupCoordinator(navigationController: navigationController)
        signupCoordinator.start()
    }
    
    func navigateToResetPasswordVC() {
        let resetPasswordCoordinator = ResetPasswordCoordinator(navigationController: navigationController)
        resetPasswordCoordinator.start()
    }
    
    func navigateToHomeVC() {
        let homeCoordinator = HomeCoordinator(navigationController: navigationController)
        mainCoordinator?.childCoordinators.append(homeCoordinator)
        mainCoordinator?.removeCoordinator(child: self)
        homeCoordinator.start()

    }
}
