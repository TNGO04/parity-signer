//
//  ManageNetworks.swift
//  NativeSigner
//
//  Created by Alexander Slesarev on 20.12.2021.
//

import SwiftUI

struct ManageNetworks: View {
    let content: MManageNetworks
    let navigationRequest: NavigationRequest
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(content.networks.sorted(by: { $0.order < $1.order }), id: \.key) { network in
                    Button(
                        action: { navigationRequest(.init(action: .goForward, details: network.key)) },
                        label: {
                            NetworkCard(title: network.title, logo: network.logo, fancy: true)
                        }
                    )
                }
            }
        }
    }
}

// struct ManageNetworks_Previews: PreviewProvider {
//    static var previews: some View {
//        ManageNetworks()
//    }
// }
