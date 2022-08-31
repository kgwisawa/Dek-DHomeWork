//
//  HomeViewModel.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var MockData: [ListCard] = [] {
        didSet{
            print("load/add Data success")
        }
    }
    
    init(){
        loadData()
    }
    
    func removeData(at offsets: IndexSet){
        Data.remove(atOffsets: offsets)
        loadData()
    }
    
    func loadData(){
        self.MockData = Data
    }
    
}

var Data: [ListCard] = [
    ListCard(name: "โพยเตรียมสอบ", detail: "อวยโพยเชิญทุ้นี้! ส่อง \"โพยเตรียมสอบ\" ในวิถีเซียน ละเอียดชนิดหมูบดยังยอมแพ้"),
    ListCard(name: "งาน #VMAs", detail: "มาดูกัน งาน #VMAs ปีนี้ P!nk สอนอะไรเรา")
]
