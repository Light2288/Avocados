//
//  Settings.swift
//  Avocados
//
//  Created by Davide Aliti on 05/08/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                Section {
                    Toggle(isOn: self.$enableNotification, label: {
                        Text("Enable notifications")
                    })
                    
                    Toggle(isOn: self.$backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                } header: {
                    Text("General settings")
                }
                
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Davide Aliti")
                        }
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Davide Aliti")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy coding!")
                        }
                    }
                    
                } header: {
                    Text("Application")
                }


            }
        }
        .frame(maxWidth: 640)
    }
}

// MARK: - Preview
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
