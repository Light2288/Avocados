//
//  RipeningModel.swift
//  Avocados
//
//  Created by Davide Aliti on 02/09/22.
//

import Foundation

struct RipeningModel: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
