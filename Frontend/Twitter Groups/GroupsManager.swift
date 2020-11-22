//
//  GroupsManager.swift
//  Twitter Groups
//
//  Created by Apple on 21/11/20.
//

import Foundation
class GroupsManager: ObservableObject{
    @Published var listData :[Groups] = [Groups(groupName: "Data Science", groupSize: 255, joinPermission: true),Groups(groupName: "Tennis", groupSize: 300, joinPermission: true),Groups(groupName: "Black Lives Matter", groupSize: 3120, joinPermission: true),Groups(groupName: "Politics", groupSize: 2600, joinPermission: true),Groups(groupName: "Cristiano Ronaldo", groupSize: 1200, joinPermission: true),Groups(groupName: "Finance", groupSize: 3427, joinPermission: false),Groups(groupName: "Narendra Modi", groupSize: 5191, joinPermission: true),Groups(groupName: "Joe Biden", groupSize: 4001, joinPermission: true)]
    
    
    
    @Published var groupList :[Groups] = [Groups(groupName: "Data Science", groupSize: 255, joinPermission: true),Groups(groupName: "Cricket", groupSize: 3300, joinPermission: true),Groups(groupName: "Science", groupSize: 255, joinPermission: true),Groups(groupName: "Art", groupSize: 400, joinPermission: true),Groups(groupName: "Animation", groupSize: 785, joinPermission: true), Groups(groupName: "Dance", groupSize: 678, joinPermission: true),Groups(groupName: "Finance", groupSize: 3427, joinPermission: false),Groups(groupName: "FinTech", groupSize: 390, joinPermission: true),Groups(groupName: "Education", groupSize: 760, joinPermission: true), Groups(groupName: "Celebrities", groupSize: 800, joinPermission: true),Groups(groupName: "Memes", groupSize: 7000, joinPermission: true), Groups(groupName: "Fitness", groupSize: 340, joinPermission: true), Groups(groupName: "Tennis", groupSize: 2200, joinPermission: true), Groups(groupName: "Roger federer", groupSize: 200, joinPermission: true),Groups(groupName: "Cars", groupSize: 789, joinPermission: true),Groups(groupName: "Politics", groupSize: 2600, joinPermission: true),Groups(groupName: "News", groupSize: 10000, joinPermission: true),Groups(groupName: "Black Lives Matter", groupSize: 3120, joinPermission: true),Groups(groupName: "Cristiano Ronaldo", groupSize: 1200, joinPermission: true),Groups(groupName: "Joe Biden", groupSize: 4001, joinPermission: true),Groups(groupName: "Narendra Modi", groupSize: 5191, joinPermission: true)]
    
    
    
    
   @Published var recommendationList :[Groups] = [Groups(groupName: "Roger federer", groupSize: 200, joinPermission: true),Groups(groupName: "Cars", groupSize: 789, joinPermission: true),Groups(groupName: "Politics", groupSize: 2600, joinPermission: true)]
   
}

