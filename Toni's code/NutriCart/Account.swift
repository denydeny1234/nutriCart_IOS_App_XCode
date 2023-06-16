import SwiftUI

struct Account: View {
    
    @State var weight: String  =  "50"
    @State var height: String = "170"

    //calories intake calculation
    var calculatedWeight: Int {
        if let weight = Int(weight) {
            return weight * 30
        } else {
            return 0
        }
    }
        
    //carbs intake calculation
        var calculatedCarbs: Int {
            return calculatedWeight / 4
        }
    
    //fats percentage calculation
    var calculatedPercentage: Double {
            if let numericWeight = Double(weight) {
                return numericWeight * 0.3 // 30% expressed as decimal value 0.3
            } else {
                return 0
            }
        }
    
    //fats decimals made less
    var formattedPercentage: String {
            return String(format: "%.1f", calculatedPercentage)
        }
    
    //protein intake calculation
    var calculatedProteinIntake: Double {
            if let numericWeight = Double(weight) {
                return numericWeight * 0.36 // 36% expressed as decimal value 0.36
            } else {
                return 0
            }
        }
    
    //protein decimals made less
    var formattedProteinIntake: String {
            return String(format: "%.1f", calculatedProteinIntake)
        }
    
    
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack {
                        Divider()
                        HStack {
                            Text("My Account")
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .padding(.top, 20)
                                .padding(.leading, 30)
                                .padding(.bottom, 20)
                            Spacer()
                        }
                        HStack {
                            Text("Current weight (kg)")
                                .font(.system(size: 18))
                                .padding(.leading, 34)
                                .padding(.top, 10)
                            
                            TextField("", text: $weight)
                                .frame(width:70, height:1)
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                                .padding(.leading, 60)
                                .padding(.top, 10)
                            
                            Spacer()
                        }
                        //deprecated, but works.
                        .onTapGesture {
                                    UIApplication.shared.keyWindow?.rootViewController?.view.endEditing(true)
                                }
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        HStack {
                            Text("Current height (cm)")
                                .font(.system(size: 18))
                                .padding(.leading, 35)
                                .padding(.top, 20)
                            
                            TextField("", text: $height)
                                .frame(width:70, height:1)
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.horizontal)
                                .padding(.leading, 57)
                                .padding(.top, 10)
                            
                            Spacer()
                        }
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        HStack {
                            Text("Gender")
                                .font(.system(size: 18))
                                .padding(.leading, 35)
                                .padding(.top, 20)
                            
                            Text("Male / Female")
                                .font(.system(size: 18))
                                .fontWeight(.thin)
                                .padding(.leading, 140)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                            
                            Spacer()
                        }
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        
                        HStack {
                            Text("Weekly goal")
                                .font(.system(size: 18))
                                .padding(.leading, 35)
                                .padding(.top, 20)
                            
                            Text("Lose weight / Gain weight")
                                .font(.system(size: 18))
                                .fontWeight(.thin)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                            
                            Spacer()
                        }
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                    }
                    
                    //------------------------------
          
                    
                    HStack {
                        Text("Nutritional Goals")
                            .font(.system(size:24))
                            .fontWeight(.bold)
                            .padding(.top, 30)
                            .padding(.leading, 30)
                            .padding(.bottom, 20)
                        Spacer()
                    }
                    HStack {
                        Text("Calories")
                            .font(.system(size: 18))
                            .padding(.leading, 35)
                            .padding(.top, 10)
                        
                        Text("\(calculatedWeight) grams")
                            .font(.system(size: 18))
                            .fontWeight(.thin)
                            .padding(.leading, 145)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                        
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    
                    HStack {
                        Text("Carbs")
                            .font(.system(size: 18))
                            .padding(.leading, 35)
                            .padding(.top, 10)
                        
                        Text("\(calculatedCarbs) grams")
                            .font(.system(size: 18))
                            .fontWeight(.thin)
                            .padding(.leading, 171)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                        
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    
                    HStack {
                        Text("Fats")
                            .font(.system(size: 18))
                            .padding(.leading, 35)
                            .padding(.top, 10)
                        
                        Text("\(formattedPercentage) grams")
                            .font(.system(size: 18))
                            .fontWeight(.thin)
                            .padding(.leading, 188)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                        
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                    
                    HStack {
                        Text("Protein")
                            .font(.system(size: 18))
                            .padding(.leading, 35)
                            .padding(.top, 10)
                        
                        Text("\(formattedProteinIntake) grams")
                            .font(.system(size: 18))
                            .fontWeight(.thin)
                            .padding(.leading, 167)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                        
                        Spacer()
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                }
                .navigationBarTitle("Account")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}




struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
