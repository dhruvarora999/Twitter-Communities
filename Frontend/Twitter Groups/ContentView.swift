//
//  ContentView.swift
//  Twitter Groups
//
//  Created by Apple on 20/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            GroupView().tabItem {
                Image(systemName: "house")
                
            }
            GroupView().tabItem {
                Image(systemName: "magnifyingglass")
                
            }
            GroupView().tabItem {
                Image(systemName: "bell")
                
            }
            GroupView().tabItem {
                Image(systemName: "envelope")
                
            }
            GroupView().tabItem {
               
                Image(systemName: "person.3")

                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
