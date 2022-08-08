//
//  HeaderModel.swift
//  Avocados
//
//  Created by Davide Aliti on 07/08/22.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
