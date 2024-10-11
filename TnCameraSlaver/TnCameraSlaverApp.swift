//
//  TnCameraSlaverApp.swift
//  TnCameraSlaver
//
//  Created by Thinh Nguyen on 9/6/24.
//

import SwiftUI
import TnIosBase
import TnCameraBase
import BinaryCodable

@main
struct TnCameraSlaverApp: App {
    var body: some Scene {
        WindowGroup {
            TnCameraAppView(
                master: false,
                bleInfo: TnCameraProxyServiceInfo.getBle(),
                transportingInfo: TnCameraProxyServiceInfo.getTransporting(EOM: nil, MTU: nil, encoder: TnBinaryEncoder(), decoder: TnBinaryDecoder())
            )
        }
    }
}
