//
//  AppView.swift
//  Avocados
//
//  Created by Davide Aliti on 05/08/22.
//

import SwiftUI

struct AppView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        } //: TabView
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK: - Preview
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
