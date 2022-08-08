//
//  FactModel.swift
//  Avocados
//
//  Created by Davide Aliti on 09/08/22.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
