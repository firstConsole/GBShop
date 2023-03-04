//
//  NetworkService.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import Foundation

final class NetworkService {
    func decodeJSON() -> [GoodsResponse] {
        guard let jsonURL = Bundle(for: type(of: self)).path(forResource: "json", ofType: "json") else {
            fatalError()
        }
        
        guard let jsonString = try? String(contentsOf: URL(filePath: jsonURL),
                                           encoding: String.Encoding.utf8) else {
            fatalError()
        }
        
        let decoder = JSONDecoder()
        
        guard let result = try? decoder.decode(GoodsModel.self, from: Data(jsonString.utf8)).goods else {
            fatalError()
        }
        
        return result
    }
}

//extension Bundle {
//
//    func decode<T: Decodable>(file: String) -> T {
//        guard let url = self.url(forResource: file, withExtension: nil) else {
//            fatalError("Could not find \(file)")
//        }
//
//        print(url)
//
//        guard let data = try? Data(contentsOf: url) else {
//            fatalError("Could not load \(file)")
//        }
//
//        print(data)
//
//        let decoder = JSONDecoder()
//
//        // Result is loaded data
//        guard let result = try? decoder.decode(T.self, from: data) else {
//            fatalError("Could not decode \(file)")
//        }
//
//        print(result)
//
//        return result
//    }
//}
