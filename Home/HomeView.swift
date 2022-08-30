//
//  ContentView.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import SwiftUI

struct HomeView: View {
    
    let title: String
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        VStack{
            List {
                ForEach(viewModel.MockData){value in
                    CustomListView(item:value)
                }
                .onDelete(perform: delete)
            }
            .listStyle(PlainListStyle())
            
        }
        .navigationTitle(Text(title))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems( trailing: trailNavigationBar())
    }
    
    func delete(at offsets: IndexSet) {
        viewModel.removeData(at: offsets)
    }
}



@ViewBuilder
func trailNavigationBar() -> some View {
    HStack{
        NavigationLink(destination: Text("Second View")) {
            Image(systemName: "plus").foregroundColor(.primary)
        }
        .navigationTitle("Navigation")
    }
}


@ViewBuilder
func CustomListView(item:ListCard) -> some View {
    VStack(alignment: .leading,spacing: 5){
        Text(item.name)
            .font(.system(size: 18).bold())
        Text(item.detail)
            .fixedSize(horizontal: false, vertical: true)
            .lineLimit(2)
            .font(.system(size: 14))
            
        Spacer()
    }
    .frame( height: 75)
    .padding(.vertical)
}

struct HomeView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView(title: "Dek-D แชร์เยอะ")
    }
}


