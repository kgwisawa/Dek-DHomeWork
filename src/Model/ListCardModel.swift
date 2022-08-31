//
//  ListCard.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import Foundation

struct ListCard: Identifiable {
    var id = UUID().uuidString
    var name: String
    var detail: String
}

// MockData //
var Data: [ListCard] = [
    ListCard(name: "โพยเตรียมสอบ", detail: "อวยโพยเชิญทุ้นี้! ส่อง \"โพยเตรียมสอบ\" ในวิถีเซียน ละเอียดชนิดหมูบดยังยอมแพ้"),
    ListCard(name: "งาน #VMAs", detail: "มาดูกัน งาน #VMAs ปีนี้ P!nk สอนอะไรเรา"),
]
