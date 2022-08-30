//
//  CreateListCardViewModel.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import Foundation
import Combine

class CreateListCardViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var detail: String = ""
    @Published private(set) var isShowValidate: Bool = false
    
    @Published private(set) var isValidateName: Bool = false
    @Published private(set) var isValidateDetail: Bool = false
    private var cancellableSet: Set<AnyCancellable> = []
    
    
    
    init(){
        $name
            .map { value in
                return value.isEmpty == false
            }
            .assign(to: \.isValidateName,on: self)
            .store(in: &cancellableSet)
        
        $detail
            .map { value in
                return value.isEmpty == false
            }
            .assign(to: \.isValidateDetail,on: self)
            .store(in: &cancellableSet)
        
    }
    
    func addData() -> Bool {
        
        if isValidateName && isValidateDetail {
            Data.append(ListCard(name: name, detail: detail))
            return true
        } else {
            isShowValidate = true
            return false
        }

        
    }
    
}
