//
//  Extensions.swift
//  NimbusTV
//
//  Created by Patrick Nguyen on 2023-02-26.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
