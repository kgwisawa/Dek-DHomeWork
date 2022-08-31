//
//  DetailCardView.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 31/8/2565 BE.
//

import SwiftUI

struct DetailCardView: View {
    @State var name: String
    @State var detail: String
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading,spacing:10){

                Text(detail).font(.system(size: 18))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
        }
        .navigationTitle(name)
        .navigationBarTitleDisplayMode(.large)
        
        
        
    }
}

struct DetailCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCardView(name: "title", detail: "detail")
    }
}
