//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Bhaskar on 01/02/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = [Coordinator]()
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        childCoordinators.append(loginCoordinator)
        loginCoordinator.mainCoordinator = self
        loginCoordinator.start()
    }
    
    func removeCoordinator(child: Coordinator) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
