//
//  NetworkServiceFactory.swift
//  MockingDemo
//
//  Created by Krystian Grabowy on 17/06/2023.
//

import Foundation

class NetworkServiceFactory {
    
    static func create() -> NetworkService {
        
        let enviroment = ProcessInfo.processInfo.environment["ENV"]
        
        if let enviroment = enviroment {
            if enviroment == "TEST" {
                return MockWebservice()
            } else {
                return Webservice()
            }
        } else {
            return Webservice()
        }
    }
}
