//
//  ToDoList.swift
//  App placeholder
//
//  Created by Nissi Sanju on 9/29/25.
//


import SwiftUI

struct CheckListItem: Identifiable, Codable {
    //let id = UUID() -> gave warning about it not being immutable when decoding
    var id = UUID()
    let title: String
    var isChecked: Bool
}

//Add more maybe??
struct ToDoList: View {
    @State private var checkListItems: [CheckListItem] = []
        var body: some View {
            ZStack {
                Color(red: 240.0/255.0, green: 235.0/255.0, blue: 223.0/255.0)
                    .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(red: 203.0/255.0, green: 217.0/255.0, blue: 228.0/255.0))
                .frame(width: 405.0, height: 230.0)
                .ignoresSafeArea()
                .position(x: 201, y:95)
            VStack {
                //Maybe include mental health page to calm down during hurricane
                Text("Here are some things you should do to prepare for a hurricane: ")
                    .bold()
                    .font(.system(size: 20.0))
                    .foregroundStyle(Color(red: 51.0/255.0, green: 65.0/255.0, blue: 85.0/255.0))
                    .padding()
                Spacer()
                    .frame(height: 25.0)
//                Image("clipboard")
                List {
                    ForEach($checkListItems) { $item in
                        HStack {
                            Image(systemName: item.isChecked ? "checkmark.square": "square")
                                .onTapGesture {
                                    item.isChecked.toggle()
                                    saveData()
                                }
                            Text(item.title)
                        }
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .padding()
            .onAppear(perform: loadData)
        }
    }
    func saveData() {
        if let encoded = try? JSONEncoder().encode(checkListItems) {
            UserDefaults.standard.set(encoded, forKey: "checklistItems")
        }
    }
    
    func loadData() {
        if let data = UserDefaults.standard.data(forKey: "checklistItems"),
           let decoded = try? JSONDecoder().decode([CheckListItem].self, from: data) {
            checkListItems = decoded
        } else {
            checkListItems = [
                CheckListItem(title: "Get one gallon of water per person per day you stay inside your home", isChecked: false),
                CheckListItem(title: "Get a 3 day to 2 week supply of easy to prepare, protein rich food.", isChecked: false),
                CheckListItem(title: "Know your evacuation route", isChecked: false),
                CheckListItem(title: "Take pictures of your house or property before the hurricane hits for insurance purposes", isChecked: false),
                CheckListItem(title: "Try to close off windows and put sandbags around your house to help with flooding", isChecked: false),
                CheckListItem(title: "Try to have access of live news through phones or radios", isChecked: false),
                CheckListItem(title: "Store important documents in a large water sealed container", isChecked: false),
                CheckListItem(title: "Get supplies like flashlights, first aid kits, medication, power banks, extra cash, tools, and extra fuel", isChecked: false)
            ]
        }
    }

}
#Preview {
    ToDoList()
}


