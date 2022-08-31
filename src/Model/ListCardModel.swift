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
var MockData: [ListCard] = [
    ListCard(name: "โพยเตรียมสอบ", detail: "อวยโพยเชิญทุ้นี้! ส่อง \"โพยเตรียมสอบ\" ในวิถีเซียน ละเอียดชนิดหมูบดยังยอมแพ้"),
    ListCard(name: "งาน #VMAs", detail: "มาดูกัน งาน #VMAs ปีนี้ P!nk สอนอะไรเรา"),
    ListCard(name: "ซุปกิมจิที่ไหนอร่อย?", detail: "ซุปกิมจิที่ไหนอร่อย? ก็ซุปกิมจิทำกินเองไง!"),
    ListCard(name: "เฟรชชี่ปี1", detail: "เปิดวาปเฟรชชี่ปี1"),
    ListCard(name: "บุกกองซีรีส์คุณพ่อบรู๊ค", detail: "น้องณดาน่ารักมาก!! บุกกองซีรีส์คุณพ่อบรู๊ค")
]
