//
//  AccountCardView.swift
//  Wallet Example
//
//  Created by Arthur Ford on 10/5/21.
//

import SwiftUI

struct AccountCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.lightOrange)
                .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.width - 50)
            Circle()
                .size(CGSize(width: 500, height: 500))
                .fill(Color.tan)
                .offset(x: -150, y: -150)
            Circle()
                .size(CGSize(width: 500, height: 500))
                .fill(Color.lighterOrange)
                .offset(x: -200, y: -150)
            Circle()
                .size(CGSize(width: 200, height: 200))
                .fill(Color.lightOrange)
                .offset(x: -80, y: -80)
            VStack(alignment: .leading) {
                HStack {
                    Text("British Pounds")
                        .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.horizontal)
                    Spacer()
                }
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.white)
                        Text("£")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    .frame(width: 70, height: 50)
                    .padding()
                    Text("GBP")
                        .foregroundColor(.white)
                        .font(.title)
                }
                Text("620.00")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .secondary, radius: 4, x: 4, y: 4)
        .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.width - 50)
    }
}

struct AccountCardView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCardView()
    }
}
