//
//  ContentView.swift
//  Customer
//
//  Created by Sangram Reddy on 19/11/2019.
//  Copyright © 2019 Sangram Reddy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchString : String = ""
    
    var edgeInserts : EdgeInsets = EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)
    
    var body: some View {
        TabView {
            NavigationView {
                List {
                    HStack() {
                        Image("veterinarian").resizable().frame(width: 40, height: 40, alignment: .center).padding(edgeInserts).onTapGesture {
                            print("Well, the gesture worked 1!")
                            }.overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 4)
                        )
                        Image("veterinarian").resizable().frame(width: 40, height: 40, alignment: .center).padding(edgeInserts).onTapGesture {
                            print("Well, the gesture worked 2!")
                        }.overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 4)
                        )
                        Image("veterinarian").resizable().frame(width: 40, height: 40, alignment: .center).padding(edgeInserts).onTapGesture {
                            print("Well, the gesture worked 3!")
                        }.overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 4)
                        )
                        Image("veterinarian").resizable().frame(width: 40, height: 40, alignment: .center).padding(edgeInserts).onTapGesture {
                            print("Well, the gesture worked 4!")
                        }.overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 4)
                        )
                    }.padding()
                    
                    ForEach((1...20), id: \.self) {
                        Text("\($0)")
                    }
                    
                }.navigationBarTitle(Text("Veteranarian"))
                 .navigationBarItems(
                    leading: HStack{
                        Image("veterinarian")
                        Button(action: self.buttonClicked ) {
                            Text("Belendur Lake, Bangalore, 500062")
                        }
                    },
                    trailing: Image("veterinarian")
                )
            }.tabItem {
                    Image("veterinarian")
                    Text("Vet").colorScheme(.dark)
            }
            
            
            NavigationView {
                    Section {
                        VStack {
                            HStack {
                                Button(action: self.buttonClicked ) {
                                    Image("veterinarian").resizable().frame(width: 50, height: 50, alignment: .center).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                }
                                Button(action: self.buttonClicked ) {
                                    Image("veterinarian").resizable().frame(width: 50, height: 50, alignment: .center).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                }
                                Button(action: self.buttonClicked ) {
                                    Image("veterinarian").resizable().frame(width: 50, height: 50, alignment: .center).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                }
                                Button(action: self.buttonClicked ) {
                                    Image("veterinarian").resizable().frame(width: 50, height: 50, alignment: .center).padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                                }
                            }
                            List {
                                ForEach((1...20).reversed(), id: \.self) {
                                    Text("\($0)…")
                                }
                            }
                        }
                    }.navigationBarTitle(Text("Veteranarian"))
                     .navigationBarItems(
                        leading: HStack{
                            Image("veterinarian")
                            Button(action: self.buttonClicked ) {
                                Text("Belendur Lake, Bangalore, 500062")
                            }
                        },
                        trailing: Image("veterinarian")
                    )
            }
                .tabItem {
                    Image("veterinarian")
                    Text("Vet").colorScheme(.dark)
            }
            
            NavigationView {
                    Section {
                        Text("other tab")
                    }.navigationBarTitle(Text("Veteranarian"))
                        .navigationBarItems(leading: TextField("Search", text: $searchString))
            }
                .tabItem {
                    Image("veterinarian")
                    Text("Vet").colorScheme(.dark)
            }
            
            NavigationView {
                    Section {
                        Text("other tab")
                    }.navigationBarTitle(Text("Veteranarian"))
                        .navigationBarItems(leading: TextField("Search", text: $searchString))
            }
                .tabItem {
                    Image("veterinarian")
                    Text("Vet").colorScheme(.dark)
            }
        }
        .font(.headline)
    }
    
    func buttonClicked() -> Void {
        print("Button clicked")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
