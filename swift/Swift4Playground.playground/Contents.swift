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

//see: https://stackoverflow.com/questions/28768015/how-to-save-an-array-as-a-json-file-in-swift
func saveToJsonFile(_ farm: Farm) {
    // Get the url of Persons.json in document directory
    guard let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
    let fileUrl = documentDirectoryUrl.appendingPathComponent("Farm.json")
    
    // Transform array into data and save it into file
    do {
        let data = try JSONSerialization.data(withJSONObject: farm, options: [])
        try data.write(to: fileUrl, options: [])
    } catch {
        print(error)
    }
}

saveToJsonFile(farm)
