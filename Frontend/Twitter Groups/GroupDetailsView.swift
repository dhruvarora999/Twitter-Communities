//
//  GroupDetailsView.swift
//  Twitter Groups
//
//  Created by Apple on 21/11/20.
//

import SwiftUI

struct GroupDetailsView: View {
    var group: Groups
    @State private var showGreeting = true
    
    var body: some View {
        let totalGroupMembers = "Group Members: "+String(group.groupSize)
        VStack{
            VStack{
                Text("Group Info").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.heavy).padding()
                Image("groupTab").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius:0).overlay(Circle().stroke(Color.blue,lineWidth: 3)).padding()
                Text(group.groupName).font(.caption).padding()
                Text(totalGroupMembers).fontWeight(.ultraLight).padding()
                
                Divider().accentColor(.blue)
                HStack(){
                    Text("Notifications").fontWeight(.heavy).padding()
                    Spacer()
                    Toggle(isOn: $showGreeting){
                        
                    }.padding()
                }
                Divider().accentColor(.blue)
        
                Text("Report Group").fontWeight(.heavy).padding().foregroundColor(.blue)
                Divider().accentColor(.blue)
        
                Text("Exit Group").fontWeight(.heavy).padding().foregroundColor(.red)
                
            }
            Spacer()

            
            
        }
    }
}

struct GroupDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupDetailsView(group: Groups(groupName: "", groupSize: 0, joinPermission: false))
    }
}
