//
//  AppViewModel.swift
//  tCamera
//
//  Created by Thinh Nguyen on 8/22/24.
//

import Foundation
import SwiftUI
import TnIosPackage
import TnCameraBase

struct TnCameraAppViewProxyClient: TnCameraAppViewProtocol {
    typealias TAppViewModel = TnCameraAppViewProxyClientModel
    @StateObject var appModel: TAppViewModel
    
    var bottom: Optional<some View> {
        HStack {
            tnCircleButton(imageName: "photo.artframe", radius: 50) {
                cameraManager.send(.getImage)
            }
        }
    }
    var showToolbar: State<Bool> = .init(initialValue: true)
}
