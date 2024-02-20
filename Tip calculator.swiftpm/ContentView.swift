import SwiftUI

struct ContentView: View {
    
    @State var billAmount: Double?
    @State var tipAmount: Double = 0
    @State var totalBill: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Bill Amount", value: $billAmount, format: .number)
             //   .textFieldStyle(.roundedBorder)
            Button(action:{
                    tipAmount = (billAmount ?? 0)
                    * 0.2
                    totalBill = tipAmount +
                    (billAmount ?? 0)
                }, label: {
                    Text("Calculate")
                })
            }
            .padding ()
            Text ("Bill Amount: \(billAmount ?? 0) ")
            Text ("Tip Amount: \(tipAmount)")
            Text ("Total Bill: \(totalBill)")
        }
        . font (.largeTitle)
    }
}
