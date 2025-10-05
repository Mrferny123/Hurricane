//
//  ToDoList.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/29/25.
//


import SwiftUI

struct CheckListItems: Identifiable {
    let id = UUID()
    let title: String
    var isChecked: Bool
}

//Add more maybe??
struct ToDoList: View {
    @State private var checkListItems: [CheckListItems] = [
        CheckListItems(title: "Get one gallon of water per person per day you stay inside your home", isChecked: false),
        CheckListItems(title: "Get a 3 day to 2 week supply of easy to prepare, protein rich food.", isChecked: false),
        CheckListItems(title: "Know your evacuation route", isChecked: false),
        CheckListItems(title: "Take pictures of your house or property before the hurricane hits for insurance purposes", isChecked: false),
        CheckListItems(title: "Try to close off windows and put sandbags around your house to help with flooding", isChecked: false),
        CheckListItems(title: "Try to have access of live news through phones or radios", isChecked: false),
        CheckListItems(title: "Store important documents in a large water sealed container", isChecked: false),
        CheckListItems(title: "Get supplies like flashlights, first aid kits, medication, power banks, extra cash, and extra fuel", isChecked: false)
    ]
    var body: some View {
        ZStack {
            Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(red: 203.0/255.0, green: 217.0/255.0, blue: 228.0/255.0))
                .frame(width: 405.0, height: 190.0)
                .ignoresSafeArea()
                .position(x: 201, y:70)
            VStack {
                //Maybe include mental health page to calm down during hurricane
                Text("Here are some things you should do to prepare for a hurricane: ")
                    .bold()
                    .font(.system(size: 20.0))
                    .foregroundStyle(Color(red: 95.0/255.0, green: 123.0/255.0, blue: 140.0/255.0))
                    .padding()
                        Spacer()
                Spacer()
                List {
                    ForEach($checkListItems) { $item in
                        HStack {
                            Image(systemName: item.isChecked ? "checkmark.square": "square")
                                .onTapGesture {
                                    item.isChecked.toggle()
                                }
                            Text(item.title)
//                                .font(.system(size: 15))
                                .font(.custom( "IndieFlower-Regular", size:15))
                        }
                    }
                }
                .scrollContentBackground(.hidden)

                NavigationLink(destination: ContentView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 203.0/255.0, green: 217.0/255.0, blue: 228.0/255.0))
                            .frame(width: 100.0, height: 30.0)
                        Text("Go Back")
                            .foregroundStyle(Color(red: 95.0/255.0, green: 123.0/255.0, blue: 140.0/255.0))
                    }
                }
                
            }
            .padding()
        }
    }
}
#Preview {
    ToDoList()
}


