import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var searchText = ""
    let categories = ["Greens", "Veggies", "Fruits", "High Proteins", "Healthy Fats", "Low Fats", "Snacks"]
    
    let categoryImages = [
        "Greens": "GreensImg",
        "Veggies": "VeggiesImg",
        "Fruits": "FruitsImg",
        "High Proteins": "HighProteinsImg",
        "Healthy Fats": "HealthyFatsImg",
        "Low Fats": "LowFatsImg",
        "Snacks": "SnacksImg"
    ]
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack {
                        Divider()
                        HStack {
                            Text("Your Daily Groceries")
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading, 20)
                            
                            Spacer()
                        }
                        HStack{
                            Text("Shop your way to better health")
                                .font(.headline)
                                .fontWeight(.thin)
                                .padding(.leading, 20)
                                .padding(.top, 10)
                                .italic()
                            Spacer()
                        }
                        VStack {
                            NavigationLink(destination: Discounts()) {
                                Image("DiscountImg")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 350, height: 350)
                            }
                        }
                        HStack{
                            Text("Categories")
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                                .padding(.leading, 20)
                                .padding(.top, 20)
                            Spacer()
                        }
                        
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                            ForEach(categories, id: \.self) { category in
                                VStack {
                                    Image(categoryImages[category] ?? "placeholder")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 50, height: 50)
                                    Text(category)
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                        
                        Spacer()
                    }
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            .tag(0)

            NavigationView{
                Discounts()
            }
                .tabItem {
                    Image(systemName: "tag.fill")
                    Text("Discounts")
                }
                .tag(1)

            NavigationView{
                Account()
            }
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                }
                .tag(2)

            NavigationView{
                List()
            }
                .tabItem {
                    Image(systemName: "cart")
                    Text("List")
                }
                .tag(3)

            Text("Settings Page Here")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
                .tag(4)
        }
        .accentColor(Color("DarkGreen"))
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
