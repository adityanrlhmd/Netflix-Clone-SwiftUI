//
//  PrimaryButton.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

enum ButtonType {
    case primary
    case secondary
    case tertiary
    
    var backgroundColor: Color {
        switch self {
        case .primary:
            return Color("PrimaryColor")
        case .secondary:
            return .white
        case .tertiary:
            return .gray
        }
    }
    
    var textColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return .black
        case .tertiary:
            return .white
        }
    }
}
 

struct CustomButton: View {
    let systemIconName: String?
    var text: String?
    var isFullWidth: Bool
    var buttonType: ButtonType
    let onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            HStack(spacing: 9) {
                if let systemIconName = systemIconName {
                    Image(systemName: systemIconName)
                }
                
                if let text = text {
                    Text(text)
                        .fontWeight(.semibold)
                }
            }
            .frame(maxWidth: isFullWidth ? .infinity : nil)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .background(buttonType.backgroundColor)
            .foregroundColor(buttonType.textColor)
            .cornerRadius(5)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(systemIconName: "heart.fill", text: "Like", isFullWidth: false, buttonType: .primary) {
            
        }
    }
}

