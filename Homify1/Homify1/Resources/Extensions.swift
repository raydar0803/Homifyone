//
//  Extensions.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import Foundation

extension String{
    
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
