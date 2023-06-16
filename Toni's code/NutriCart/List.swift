import SwiftUI

struct List: View {
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack {
                        Divider()
                        HStack {
                            
                            Text("My grocery list")
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading, 20)
                            
                            Spacer()
                        }
                        VStack {
                            Image("VeggiesSale")
                                .frame(width: 350, height: 200)
                                .padding(.leading, 20)
                            
                            Image("ProteinSale")
                                .frame(width: 350, height: 150)
                            
                        }
                    }
                }
                .navigationBarTitle("My List")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}


struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
    }
}
