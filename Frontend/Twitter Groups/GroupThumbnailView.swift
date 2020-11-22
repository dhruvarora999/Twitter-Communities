//
//  GroupThumbnailView.swift
//  Twitter Groups
//
//  Created by Apple on 20/11/20.
//

import SwiftUI

struct GroupThumbnailView: View {
    var groupName: String = "Group Name"
    var body: some View {
        HStack{
            Image("groupTab").clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius:0).overlay(Circle().stroke(Color.blue,lineWidth: 3)).padding()
            
            Text(groupName).fontWeight(.heavy).padding()
            Spacer()
        }
    }
}

struct GroupThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        GroupThumbnailView()
    }
}
