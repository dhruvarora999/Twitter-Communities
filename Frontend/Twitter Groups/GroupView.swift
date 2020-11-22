//
//  GroupView.swift
//  Twitter Groups
//
//  Created by Apple on 20/11/20.
//

import SwiftUI


struct GroupView: View {
    @ObservedObject var groupsManager = GroupsManager()
    @State var show: Bool = false
    var body: some View {
        NavigationView{
            List(groupsManager.listData){ item in
                NavigationLink(
                    destination: GroupChatView(group: item)){
                    HStack{
                        GroupThumbnailView(groupName: item.groupName)
                    }
                }
                
            }.navigationTitle("Communities").navigationBarItems(trailing:                                         Button(action: {
                self.show.toggle()
               
            }) {
                Image(systemName: "plus.circle.fill")
            }.sheet(isPresented: $show) {
                GroupFinderView()
            })
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
