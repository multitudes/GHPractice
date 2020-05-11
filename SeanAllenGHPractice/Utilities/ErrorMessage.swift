//
//  ErrorMessage.swift
//  SeanAllenGHPractice
//
//  Created by Laurent B on 11/05/2020.
//  Copyright © 2020 Laurent B. All rights reserved.
//

import Foundation

// raw value is the type that the enum conforms to.
enum ErrorMessage: String {

    case invalidUserName = "This username created an invalid request"
    case unableToComplete = "Unable to complete, check your internet connection"
    case invalidResponseFromTheServer = "Invalid response from the server, pls try again"
    case invalidData = "The data received was invalid, pls try again"
}
