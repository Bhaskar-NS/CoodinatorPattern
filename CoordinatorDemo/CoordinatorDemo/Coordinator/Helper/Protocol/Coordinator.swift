//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Bhaskar on 01/02/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
//    var childCoordinators: [Coordinator] { get set }
}
