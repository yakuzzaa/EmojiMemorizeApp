//
//  ContentView.swift
//  EmojiMemorize
//
//  Created by polina on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️","🚗","🚜","🚀","🚌","🛵","🛴","🚝","🚁","🛥️","⛵️","🚖","🚔"]
    @State var emojiCounter = 3
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 100 ))]){
                    ForEach(emojis[0..<emojiCounter], id: \.self){emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        }
            }
            
                
                
                
                }.foregroundColor(.red)
            Spacer()
            HStack{
                add
                Spacer()
                remove
                
            }.padding(.horizontal).font(.largeTitle)
            }
        
        }
    var remove: some View{
        Button(action:{
            if emojiCounter > 1{
                emojiCounter-=1
            }
            
            
        } ,
               label:{Image(systemName:"minus.circle")} )
        
    }
    var add: some View{
        Button(action: {
            if emojiCounter < emojis.count{
                emojiCounter+=1
            }
            
            
        },
               label: {Image(systemName:"plus.circle")})
    }
        
    }



struct CardView: View{
    @State var faceUp: Bool = false
    var content: String
    var body: some View{
        ZStack{
            let shape =  RoundedRectangle(cornerRadius:15)
            if faceUp{
                shape.stroke(lineWidth: 5)
                shape.foregroundColor(.white)
                Text(content).font(.largeTitle)
            }
            else{
                shape
            }
            
        }.padding(.all)
//        .frame(width: 120.0, height: 180.0)
        .onTapGesture{
            faceUp = !faceUp
        }
        
    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
