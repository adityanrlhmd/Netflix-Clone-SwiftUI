//
//  ListView.swift
//  Netflix Clone
//
//  Created by Aditt on 21/08/23.
//

import SwiftUI

struct ListView: View {
    @State private var dataShow: String?
    @State private var isShow: Bool = false
    @Namespace private var textAnimation
    
    var body: some View {
        NavigationStack {
            ZStack {
                Text("Hello, World!")
                    .matchedGeometryEffect(id: "text", in: textAnimation)
                    .onTapGesture {
                        dataShow = "Hello, World!"
                        withAnimation(.spring()) {
                            isShow = true
                        }
                    }
                
                if let unDataShow = dataShow {
                    VStack {
                        Text(unDataShow)
                            .font(.system(size: 40))
                            .matchedGeometryEffect(id: "text", in: textAnimation)
                            .onTapGesture {
                                dataShow = nil
                                withAnimation(.spring()) {
                                    isShow = false
                                }
                            }
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
