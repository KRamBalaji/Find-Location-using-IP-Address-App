//
//  IPManager.swift
//  IP_Address_Location
//
//  Created by Ram Balaji Koppula on 07/12/22.
//

import Foundation

class IPManager {
    
    func getIPDetails(IPAddress: Int) async throws -> APIResponse {
        guard let url = URL(string: "http://ip-api.com/json/\(IPAddress)") else { fatalError("Missing URL")}
        
        let urlRequest = URLRequest(url: url)
        let (data,response) = try await URLSession.shared.data(for: urlRequest)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("error fetching IP address data")}
        
        let decodedData = try JSONDecoder().decode(APIResponse.self, from: data)
        return decodedData
    }
}
