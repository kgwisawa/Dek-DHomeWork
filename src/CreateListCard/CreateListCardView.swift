//
//  CreateListCardView.swift
//  Dek-DHomeWork
//
//  Created by วิศวะ โชติพันธุ์พงศ์ on 30/8/2565 BE.
//

import SwiftUI

struct CreateListCardView: View {
        
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var viewModel: CreateListCardViewModel = CreateListCardViewModel()
    
    var body: some View {
        VStack{
            Form{
                Section(){
                    TextField("ใส่ชื่อเรื่องตรงนี้...", text: $viewModel.name)
                } header: {
                    Text("ชื่อเรื่อง (Name)").font(.system(size: 14).bold())
                } footer: {
                    HStack{
                        Image(systemName: "exclamationmark.circle.fill").foregroundColor(.red)
                        Text("กรุณากรอกชื่อ").bold().foregroundColor(.red)
                    }.opacity((viewModel.isValidateName == false) && viewModel.isShowValidate ? 1 : 0)
                }
                
                
                Section{
                    ZStack(alignment: .topLeading) {
                        if viewModel.detail.isEmpty {
                            Text("ใส่เนื้อหาตรงนี้...")
                                .foregroundColor(.gray)
                                .font(.system(size: 18))
                                .padding(.vertical,10)
                                .padding(.leading,5)
                        }
                        
                        
                        TextEditor(text: $viewModel.detail)
                            .frame( height: 150)
                    }
                } header: {
                    Text("เนื้อหา (Detail)").font(.system(size: 14).bold())
                } footer: {
                    HStack{
                        Image(systemName: "exclamationmark.circle.fill").foregroundColor(.red)
                        Text("กรุณากรอกรายระเอียด").bold().foregroundColor(.red)
                    }.opacity((viewModel.isValidateDetail == false) && viewModel.isShowValidate ? 1 : 0)
                }
                
            }

            CustomBottomBar(vm: viewModel,pm: presentationMode)
                .ignoresSafeArea()
        }
        .navigationTitle("เพิ่มโพส์ต")
        .navigationBarTitleDisplayMode(.inline)
    }
}

@ViewBuilder
func CustomBottomBar(vm: CreateListCardViewModel,pm: Binding<PresentationMode>) -> some View {
    HStack{
        Spacer()
        
        VStack{
            Button {
                pm.wrappedValue.dismiss()
            } label: {
                Text("Cancel")
                    .font(.system(size: 18).bold())
                    .foregroundColor(.white)

            }
        }
        .frame(width: 150,height: 45)
        .background(
            Rectangle()
                .fill(.gray)
                .cornerRadius(5)
        )

        
        Spacer()
        
        VStack{
            Button {
                if vm.addData() {
                    pm.wrappedValue.dismiss()
                }
            } label: {
                Text("Submit")
                    .font(.system(size: 18).bold())
                    .foregroundColor(.white)
            }
        }
        .frame(width: 150,height: 45)
        .background(
            Rectangle()
                .fill(.orange)
                .cornerRadius(5)
        )
        
        Spacer()
    }
    .frame( height: 50)
    

}

struct CreateListCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreateListCardView()
//        HomeView(title: "Dek-D แชร์เยอะ")
    }
}
