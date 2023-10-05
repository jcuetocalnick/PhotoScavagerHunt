//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite coffee shop",
                 description: "Where is it that you go when you want a nice coffee?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to connect with nature ?"),
            Task(title: "Your favorite library around",
                 description: "Where do you go to study or read your favorite book?"),
            Task(title: "Your favorite breakfast",
                 description: "What is your food to eat for breakfast?"),
        ]
    }
}
