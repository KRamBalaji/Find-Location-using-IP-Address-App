//
//  APIResponse.swift
//  IP_Address_Location
//
//  Created by Ram Balaji Koppula on 06/12/22.
//

import Foundation

struct APIResponse: Decodable {
    let query: String
    let status: String
    let country: String
    let countryCode: String
    let region: String
    let regionName: String
    let city: String
    let zip: String
    let lat: Int
    let lon: Int
    let timezone: String
    let isp: String
    let org: String
    let As: String
}
