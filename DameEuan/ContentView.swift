//
//  ContentView.swift
//  DameEuan
//
//  Created by George Ivannikov on 21.10.2021.
//

import SwiftUI
import Firebase

struct OutlineButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .red)
            .padding()
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(configuration.isPressed ? Color.gray : .red)
        )
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Active task:")) {
                    HStack {
                        VStack (alignment: .leading, spacing: 5) {
                            HStack {
                                Text("Amount: ")
                                Text("2")
                            }
                            HStack {
                                Text("Delivery time: ")
                                Text("23:00")
                                    .underline()
                            }
                            
                        }
                        Spacer()
                        Button("Decline") {}
                            .buttonStyle(OutlineButton())
                    }
                    .padding()
                }
                Section(header: Text("Inactive tasks:")) {
                    HStack {
                        VStack (alignment: .leading, spacing: 5) {
                            Text("Amount: 2")
                            Text("Date: 21.10.21")
                            HStack {
                                Text("State: ")
                                Text("Completed")
                                    .foregroundColor(Color(red: 75/255, green: 139/255, blue: 59/255))
                                    .font(Font.headline.weight(.bold))
                            }
                        }
                        Spacer()
                        Text("😋")
                            .font(.system(size: 40))
                    }
                    .padding(5)
                    HStack {
                        VStack (alignment: .leading, spacing: 5) {
                            Text("Amount: 3")
                            Text("Date: 21.10.21")
                            HStack {
                                Text("State: ")
                                Text("Declined")
                                    .foregroundColor(Color(red: 194/255, green: 24/255, blue: 7/255))
                                    .font(Font.headline.weight(.bold))
                            }
                        }
                        Spacer()
                        Text("😠")
                            .font(.system(size: 40))
                    }
                    .padding(5)
                    HStack {
                        VStack (alignment: .leading, spacing: 5) {
                            Text("Amount: 1")
                            Text("Date: 21.10.21")
                            HStack {
                                Text("State: ")
                                Text("Expired")
                                    .foregroundColor(Color(red: 255/255, green: 127/255, blue: 0/255))
                                    .font(Font.headline.weight(.bold))
                            }
                        }
                        Spacer()
                        Text("🙁")
                            .font(.system(size: 40))
                    }
                    .padding(5)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("DameEuan 🍺")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
