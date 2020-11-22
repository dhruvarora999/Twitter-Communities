//
//  GroupSelectionView.swift
//  Twitter Groups
//
//  Created by Apple on 21/11/20.
//

import SwiftUI

struct GroupSelectionView: View {
    var group: Groups
 
    var body: some View {
        let totalGroupMembers = "Group Members: "+String(group.groupSize)
        VStack{
            HStack{
                Image("groupTab").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius:0).overlay(Circle().stroke(Color.blue,lineWidth: 3)).padding()
                VStack(alignment: .leading){
                    Text(group.groupName).fontWeight(.heavy).padding()
                    Text(totalGroupMembers).fontWeight(.ultraLight).padding()
                }

                Spacer()
                Button(action: {
                    listData.append(group)
                    print(listData)
                }, label: {
                    if(group.joinPermission==false){
                        Text("Ask to Join")
                    }
                    else{
                        Image(systemName: "plus.circle")
                    }
                    
                })
            }

        }
    }
}

struct GroupSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GroupSelectionView(group: Groups(groupName: " ", groupSize: 0, joinPermission: false))
    }
}
