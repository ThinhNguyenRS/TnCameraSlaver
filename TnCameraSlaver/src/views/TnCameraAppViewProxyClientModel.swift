//
//  AppViewModelProxyClient.swift
//  TnCameraMaster
//
//  Created by Thinh Nguyen on 9/6/24.
//

import Foundation
import TnCameraBase

class TnCameraAppViewProxyClientModel: TnCameraAppViewModelDefault<TnCameraProxyClient>, TnCameraViewModelDelegate {
    func onChanged(settings: TnCameraSettings, status: TnCameraStatus) {
    }
    
    func onVolumeButton() {
        cameraManager.captureImage(completion: { uiImage in })
    }
    
    override func setup() {
        cameraModel.delegate = self
        cameraManager.bleDelegate = cameraManager
        super.setup(withOrientation: true)
    }
}
