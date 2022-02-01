//
//  HomeCoordinator.swift
//  CoordinatorDemo
//
//  Created by Bhaskar on 01/02/22.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeVC = HomeVC.instantiateFromStoryBoard()
        navigationController.pushViewController(homeVC, animated: true)
    }
}

class SignupCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signupVC = SignupVC.instantiateFromStoryBoard()
        navigationController.pushViewController(signupVC, animated: true)
    }
}

class ResetPasswordCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let resetPwdVC = ResetPwdVC.instantiateFromStoryBoard()
        navigationController.pushViewController(resetPwdVC, animated: true)
    }
}
