//
//  GroupFinderView.swift
//  Twitter Groups
//
//  Created by Apple on 21/11/20.
//

import SwiftUI

struct GroupFinderView: View {
    @State var searchText: String = ""
    @ObservedObject var groupsManager = GroupsManager()
    
    var body: some View {
        VStack{
            HStack{
                Text("Recommended For you!").font(.largeTitle).fontWeight(.black).padding()
                Spacer()
            }
            List(groupsManager.recommendationList){ recommendation in
                GroupSelectionView(group: recommendation)
                
            }
            HStack{
                Text("Browse all communities").font(.largeTitle).fontWeight(.black).padding()
                Spacer()
            }
            
            SearchBar(text: $searchText)
            List(groupsManager.groupList.filter({ searchText.isEmpty ? true : $0.groupName.contains(searchText) })) { group in
                GroupSelectionView(group: group)
            }
        }

    }
}

struct GroupFinderView_Previews: PreviewProvider {
    static var previews: some View {
        GroupFinderView()
    }
}
