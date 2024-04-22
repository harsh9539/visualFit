//
//  UserAccountDataModel.swift
//  VisualFit
//
//  Created by student on 20/04/24.
//

import UIKit

enum Gender {
    case female
    case male
    case other
}
struct Height{
    
    var heightInCentimeters : Int?
    var heightInFeet : Int?
}

struct Weight{
    var weightInKg : Int?
    var weightInPounds : Int?
}

struct User{
    
    let appleID : String
    var firstName : String
    var lastName : String
    var gender : Gender
    var height : Height
    var weight : Weight
    var username : String
    var xp : Int?
    var currentStreak : Int
    var bestStreak : Int
    var badgesEarned : [Badge]
    var profilePhoto : UIImage
    var friends : [User]
}

struct Badge{
    
    let days : Int
    var isLocked : Bool
}

