//
//  ScrollSection.swift
//  MovieBooking
//
//  Created by aykut ipek on 4.08.2023.
//

import SwiftUI

struct ScrollSection: View {
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    @State var title: String = "Now Playing"
    var body: some View {
        VStack(alignment: .leading){
            Text("Now Playing")
                .font(.headline)
//                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10.0) {
                    ForEach(posters.indices, id: \.self) { index in
                        NavigationLink {
                            BookingView()
                        } label: {
                            Image(posters[index])
                                .resizable()
                                .frame(width: 120, height: 155)
                                .cornerRadius(5)
                        }

                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}
