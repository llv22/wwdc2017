//: Playground - noun: a place where people can play

import Cocoa
import CoreLocation

//essential reference: https://medium.com/@ashishkakkad8/use-of-codable-with-jsonencoder-and-jsondecoder-in-swift-4-71c3637a6c65
//see: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html
public enum Animal: String, Codable {
    case cow
    case dog
    case chicken
}

public struct Location: Codable {
    public let latitude: Double
    public let longitude: Double
}

public struct Farm: Codable {
    public let name: String
    public let location: Location
    public let animals: [Animal]
}
// serialize to JSON
let farm =  Farm(name: "Old MacDonald’s Farm", location: Location(latitude: 51.6216, longitude: 0.2692), animals: [.cow, .dog, .chicken])
let payload: Data = try JSONEncoder().encode(farm)
let decoded_farm = try JSONDecoder().decode(Farm.self, from: payload)
