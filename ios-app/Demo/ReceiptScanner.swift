import AVFoundation
import SwiftUI

final class ReceiptScanner {
    let session = AVCaptureSession()
    func start() throws {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        let input = try AVCaptureDeviceInput(device: device)
        session.addInput(input)
        UserDefaults.standard.set(true, forKey: "scannerUsed")
    }
}
