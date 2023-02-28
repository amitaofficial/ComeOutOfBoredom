//
//  ResponseModel.swift
//  MyFirstApp
//
//  Created by Amita Ghosh on 2/23/23.
//

import Foundation


struct ResponseModel : Codable {
    var activity : String
    var accessibility : Float
    var type : String
    var participants : Int
    var price : Float
    var link : String
    var key : String
}
