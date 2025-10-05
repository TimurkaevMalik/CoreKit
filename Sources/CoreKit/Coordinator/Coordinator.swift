// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

// MARK: - Coordinator
public protocol Coordinator: CoordinatorFinishDelegate {
    var finishDelegate: CoordinatorFinishDelegate? { get set }

    func start()
    func finish()
}

public extension Coordinator {
    func finish() {
        finishDelegate?.didFinishChild(self)
    }
}

// MARK: - CoordinatorFinishDelegate
public protocol CoordinatorFinishDelegate: AnyObject {
    func didFinishChild(_ coordinator: Coordinator)
}

// MARK: - CompositionCoordinator
public protocol CompositionCoordinator: Coordinator {
    var children: [Coordinator] { get set }
}

public extension CompositionCoordinator {
    func addChild(_ coordinator: Coordinator) {
        children.append(coordinator)
        coordinator.finishDelegate = self
    }
    
    func removeChild(_ coordinator: Coordinator) {
        children.removeAll(where: { $0 === coordinator })
    }
    
    func didFinishChild(_ coordinator: Coordinator) {
        removeChild(coordinator)
    }
}

// MARK: - FlowCoordinator
public protocol FlowCoordinator: Coordinator {
    var child: Coordinator? { get set }
}

public extension FlowCoordinator {
    func addChild(_ coordinator: Coordinator) {
        child = coordinator
        coordinator.finishDelegate = self
    }
    
    func removeChild() {
        child = nil
    }
    
    func didFinish(childCoordinator: Coordinator) {
        removeChild()
    }
}
