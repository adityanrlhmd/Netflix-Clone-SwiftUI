//
//  IconButton.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct IconButton: View {
    let systemIconName: String
    let labelText: String
    let onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            VStack(spacing: 8) {
                Image(systemName: systemIconName)
                    .font(.title)
                Text(labelText)
                    .font(.system(size: 10))
            }
            .foregroundColor(Color.white)
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        IconButton(systemIconName: "heart.fill", labelText: "Like", onClick: {})
    }
}
