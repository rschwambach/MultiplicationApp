//
//  Value.swift
//  MultiplicationApp
//
//  Created by RICHARD SCHWAMBACH on 03/04/21.
//

import Foundation

struct FormatNumber: Codable {
    var value: Int
}

extension FormatNumber: CustomStringConvertible {
    var description: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator  = "."
        
        let number = NSNumber(value: value)
        let formattedValue = formatter.string(from: number)!
        return formattedValue
    }
}
