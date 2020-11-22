//
//  GroupChatView.swift
//  Twitter Groups
//
//  Created by Apple on 20/11/20.
//

import SwiftUI

struct GroupChatView: View {
    var group: Groups
    @State var message: String = ""
    @State var show: Bool = false
    var body: some View {
        VStack{
            ScrollView{
                if(group.groupName == "Tennis"){
                    Image("SportsChat").resizable().aspectRatio(contentMode: .fit)
                }
                else {
                    Image("DataScienceChat").resizable().aspectRatio(contentMode: .fit)
                }
            }
            Spacer()
            VStack{
                Divider().accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                HStack{
                   
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                    }).padding()
                    TextField("Enter message", text: $message).border(Color.blue).cornerRadius(3)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "paperplane")
                    }).disabled(message.count == 0).padding()
                }
            }.navigationBarTitle(group.groupName, displayMode: .inline).navigationBarItems(trailing:                                         Button(action: {
                self.show.toggle()
               
            }) {
                Image(systemName: "info.circle")
            }.sheet(isPresented: $show) {
                GroupDetailsView(group: group)
            })
            
        }
        
    }
}

struct GroupChatView_Previews: PreviewProvider {
    static var previews: some View {
        GroupChatView(group: Groups(groupName: "", groupSize: 0, joinPermission: false))
    }
}
