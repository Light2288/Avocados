//
//  HeaderView.swift
//  Avocados
//
//  Created by Davide Aliti on 07/08/22.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var header: Header
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }//: VStack
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }//: HStack
            .frame(width: 281, height: 105, alignment: .center)
            .offset(x: -60, y: self.showHeadline ? 75 : 220)
            .animation(slideInAnimation, value: self.slideInAnimation)
            .onAppear {
                self.showHeadline.toggle()
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1]).previewLayout(.sizeThatFits)
    }
}
