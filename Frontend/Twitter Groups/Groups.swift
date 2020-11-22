//
//  Groups.swift
//  Twitter Groups
//
//  Created by Apple on 20/11/20.
//

import Foundation

struct Groups: Identifiable{
    var id = UUID()
    var groupName: String
    var groupSize: Int
    var joinPermission: Bool
}
var listData :[Groups] = [Groups(groupName: "Data Science", groupSize: 255, joinPermission: true),Groups(groupName: "Cricket", groupSize: 300, joinPermission: true)]
var groupList :[Groups] = [Groups(groupName: "Data Science", groupSize: 255, joinPermission: true),Groups(groupName: "Cricket", groupSize: 300, joinPermission: true),Groups(groupName: "Science", groupSize: 255, joinPermission: true)]
var recommendationList :[Groups] = [Groups(groupName: "Roger federer", groupSize: 255, joinPermission: true),Groups(groupName: "Cars", groupSize: 300, joinPermission: true),Groups(groupName: "Politics", groupSize: 255, joinPermission: true)]
