//
//  HomeViewModel.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var CardData: [ListCard] = [] {
        didSet{
            print("load/add Data success")
        }
    }
    
    init(){
        loadData()
    }
    
    func removeData(at offsets: IndexSet){
        MockData.remove(atOffsets: offsets)
        loadData()
    }
    
    func loadData(){
        self.CardData = MockData
    }
    
}


