//
//  ContentView.swift
//  Electric Charge Calculator
//
//  Created by Kritanon Trachookul on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    @State var resultText:String = "คำนวณค่าไฟฟ้า"
    @State var watt:String = ""
    @State var hour:String = ""
    @State var baht:String = ""
    
    var body: some View {
        VStack {
            Text(resultText).font(.largeTitle)
            HStack {
                Text("กำลังไฟฟ้า:")
                    .font(.title2)
                TextField("วัตต์", text: $watt)
                    .padding(.leading, 30.0).keyboardType(.numberPad)
            }.padding()
            HStack {
                Text("เวลา:")
                    .font(.title2)
                TextField("ชั่วโมง", text: $hour)
                    .padding(.leading, 88.0).keyboardType(.numberPad)
            }.padding()
            HStack {
                Text("ค่าไฟ:")
                    .font(.title2)
                TextField("บาท/หน่วย", text: $baht)
                    .padding(.leading, 78.0).keyboardType(.numberPad)
            }.padding()
            Button(/*@START_MENU_TOKEN@*/"คำนวณ"/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                let result = (Double(self.watt)! * Double(self.hour)! / 1000.0) * Double(self.baht)!
                self.resultText = String(result) + " บาท"
            }.frame(width: 100.0, height: 50.0).background(.blue).foregroundColor(.white).cornerRadius(5).font(.title).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
