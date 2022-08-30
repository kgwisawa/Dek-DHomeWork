//
//  HomeViewModel.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var MockData: [ListCard] = [
        ListCard(name: "โพยเตรียมสอบ", detail: "อวยโพยเชิญทุ้นี้! ส่อง \"โพยเตรียมสอบ\" ในวิถีเซียน ละเอียดชนิดหมูบดยังยอมแพ้"),
        ListCard(name: "งาน #VMAs", detail: "มาดูกัน งาน #VMAs ปีนี้ P!nk สอนอะไรเรา")
    ]
    
    init(){
        
    }
    
    func removeData(at offsets: IndexSet){
        MockData.remove(atOffsets: offsets)
    }
    
}
