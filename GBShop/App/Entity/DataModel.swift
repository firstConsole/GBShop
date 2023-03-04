//
//  DataModel.swift
//  GBShop
//
//  Created by Алексей Артамонов on 26.02.2023.
//

import Foundation

//struct Goods: Hashable, Codable {
//    let goods: [GoodsResponse]
//}
//
//struct GoodsResponse: Hashable, Codable {
//    let phones: [Device]
//    let tablets: [Device]
//}
//
//struct Device: Hashable, Codable {
//    let id: Int
//    let category: String
//    let name: String
//    let description: String
//    let brand: String
//    let color: String
//    let memory: String
//    let costRuble: Double
//    let isPromotional: Bool
//    let photo: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, category, name, description, brand, color, memory
//        case costRuble = "cost_ruble"
//        case isPromotional = "is_promotional"
//        case photo
//    }
//}

// MARK: - Jsonformatter
struct GoodsModel: Codable {
    let goods: [GoodsResponse]
}

// MARK: - Good
struct GoodsResponse: Codable {
    let phones, tablets: [Device]
}

// MARK: - Phone
struct Device: Codable {
    let id: Int
    let category, name, description, brand: String
    let color, memory: String
    let costRuble: Int
    let isPromotional: Bool
    let photo: String

    enum CodingKeys: String, CodingKey {
        case id, category, name, description, brand, color, memory
        case costRuble = "cost_ruble"
        case isPromotional = "is_promotional"
        case photo
    }
}
