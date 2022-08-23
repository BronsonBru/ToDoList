//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Bronson van den Broeck on 2022/08/22.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for view
 
 */

@main
struct ToDoListApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
            
            
            
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//
//
        }
    }
}
